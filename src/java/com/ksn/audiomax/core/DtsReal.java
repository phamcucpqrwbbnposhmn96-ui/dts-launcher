package com.ksn.audiomax.core;

/**
 * 真 DTS 比特流引擎 (dcaenc 编码 + dcadec 解码) JNI 桥.
 * 把 JAMU 捕获到的其它 app 音频, 走一条真 DTS 编码→解码往返再出声.
 *
 * JAMU 热循环里只用已合法寄存器(v15=short[], v0=int)调 process, 不引入新寄存器, 避免 ART VerifyError.
 */
public final class DtsReal {
    private DtsReal() {}

    /** 原生库是否加载成功. 没加载就 process 直接返回, 绝不碰 PCM(安全). */
    public static volatile boolean ready = false;

    /** DTS:X 注入总闸: true=捕获音频过真 DTS; false=纯透传原声(等于"取消/删除注入"). */
    public static volatile boolean injected = true;

    /** 可切换注入模式: 0=关(透传原声), 1=DTS:X 真比特流往返, 2=外放环绕(透传, 靠音频fx空间化). */
    public static final int MODE_OFF = 0, MODE_DTSX = 1, MODE_SURROUND = 2;
    public static volatile int mode = MODE_DTSX;

    static {
        try {
            System.loadLibrary("ksndtsreal");
            ready = true;
        }
        catch (Throwable t) {
            t.printStackTrace();
            ready = false;
        }
    }

    /** 一键取消/恢复 DTS:X 注入. false=纯透传原声并释放引擎状态(删除注入). 原生库没加载也绝不崩. */
    public static void setInject(boolean on) {
        injected = on;
        if (!on) {
            mode = MODE_OFF;
            try { releaseAll(); } catch (Throwable ignored) {}
        }
        else if (mode == MODE_OFF) { mode = MODE_DTSX; }
    }

    public static boolean isInjected() {
        return injected;
    }

    /** 切换注入模式: MODE_OFF / MODE_DTSX / MODE_SURROUND. */
    public static void setMode(int m) {
        mode = (m < 0 || m > 2) ? MODE_DTSX : m;
        if (mode == MODE_OFF) releaseAll();
    }

    public static boolean isDtsx() {
        return injected && mode == MODE_DTSX;
    }

    /** Java 端安全门控: 只有 DTS:X 模式才跑真 DTS 往返; 其余模式纯透传(原声/环绕). 绝不抛异常到调用方. */
    public static void process(short[] buf, int sizeInShorts) {
        if (!isDtsx() || !ready || buf == null || sizeInShorts <= 0) return;
        try {
            nativeProcess(buf, sizeInShorts);
        }
        catch (Throwable ignored) {}
    }

    /** native: 立体声 short[] → 真 DTS 编码 → 真 DTS 解码 → in-place 写回 buf. void. */
    private static native void nativeProcess(short[] buf, int sizeInShorts);

    /** PcmFloat 路径: float[] 立体声 → 真 DTS 往返 in-place. 仅 DTS:X 模式. */
    public static void processFloat(float[] buf, int sizeInFloats) {
        if (!isDtsx() || !ready || buf == null || sizeInFloats <= 0) return;
        try {
            nativeProcessFloat(buf, sizeInFloats);
        }
        catch (Throwable ignored) {}
    }
    private static native void nativeProcessFloat(float[] buf, int sizeInFloats);

    /** DTS:X 风格: 切真实时 DTS 往返的处理风格. */
    public static final int STYLE_STANDARD = 0, STYLE_CINEMA = 1, STYLE_EXTERNAL = 2;
    /** 切换 DTS:X 注入风格(标准 / 影院环绕 / 外放). 原生库没加载也绝不崩. */
    public static void setStyle(int style) {
        try { nativeSetStyle(style); } catch (Throwable ignored) {}
        try { com.ksn.audiomax.core.DtsSelfTest.setStyle(style); } catch (Throwable ignored) {}
    }
    private static native void nativeSetStyle(int style);

    /** 真 DTS:X / DTS-HD 解码: 把文件(比特流)解成立体声 PCM 播放. 返回解出立体声帧数, 失败 -1. */
    public static int decodeDtsxFile(java.io.File f, short[] outPcm, int[] meta) {
        if (!ready || f == null || outPcm == null) return -1;
        try {
            return nativeDecodeDtsxFile(f.getAbsolutePath(), outPcm, meta);
        }
        catch (Throwable t) { return -1; }
    }
    private static native int nativeDecodeDtsxFile(String path, short[] outPcm, int[] meta);

    /** 释放常驻状态(JAMU stopRecording 调). */
    public static native void releaseAll();

    /** 从 JAMU 设置("application" prefs 的 dtsx_inject/dtsx_style)初始化 + 监听实时切换.
     *  JAMU MainApplication.onCreate 调一次即可. */
    public static void init(android.content.Context ctx) {
        if (ctx == null) return;
        android.util.Log.i("DtsReal", "init 开始, preload libdtsxreal");
        // 预加载真 DTS:X 解码/上混库(libdtsxreal.so), 让 live 引擎能 dlsym 到 kdn_upmix_float
        try { com.ksn.audiomax.core.DtsRealX.engineName(); } catch (Throwable ignored) {}
        android.util.Log.i("DtsReal", "DtsRealX.ready=" + com.ksn.audiomax.core.DtsRealX.ready
                + " engine=" + com.ksn.audiomax.core.DtsRealX.engineName());
        android.content.SharedPreferences sp = ctx.getSharedPreferences("application", 0);
        applyFromPrefs(sp);
        // JAMU 设置用 MODE_MULTI_PROCESS 写 "application" prefs, 与 MODE_PRIVATE 是不同的缓存实例;
        // 两个模式都注册监听, 保证无论设置写到哪个实例都能实时触发.
        try {
            android.content.SharedPreferences.OnSharedPreferenceChangeListener f =
                    new android.content.SharedPreferences.OnSharedPreferenceChangeListener() {
                @Override
                public void onSharedPreferenceChanged(android.content.SharedPreferences s, String key) {
                    android.util.Log.i("DtsReal", "pref 变化: " + key);
                    if ("dtsx_inject".equals(key)) setInject(s.getBoolean("dtsx_inject", true));
                    else if ("dtsx_style".equals(key)) setStyle(Integer.parseInt(s.getString("dtsx_style", "1")));
                    else if ("dtsx_play".equals(key))
                        com.ksn.audiomax.core.DtsRealX.setPlay(ctx,
                                Integer.parseInt(s.getString("dtsx_style", "1")),
                                s.getBoolean("dtsx_play", false));
                }
            };
            sp.registerOnSharedPreferenceChangeListener(f);
            android.content.SharedPreferences sp2 =
                    ctx.getSharedPreferences("application", android.content.Context.MODE_MULTI_PROCESS);
            if (sp2 != sp) sp2.registerOnSharedPreferenceChangeListener(f);
            android.util.Log.i("DtsReal", "pref 监听已注册 (双模式, sp2!=sp: " + (sp2 != sp) + ")");
        } catch (Throwable t) {
            android.util.Log.w("DtsReal", "注册监听失败 " + t);
        }
        // 监听在 JAMU 的 androidx 设置实例上不一定触发, 再加一个轻量轮询兜底, 保证切换一定生效.
        startPoller(ctx);
    }

    private static volatile boolean pollerStarted = false;
    private static void startPoller(android.content.Context ctx) {
        if (pollerStarted) return;
        pollerStarted = true;
        final android.content.Context c = ctx;
        new java.lang.Thread(new java.lang.Runnable() {
            public void run() {
                // 用当前 prefs 值做基线, 避免启动即误触发
                boolean inj; int style; boolean play;
                try {
                    android.content.SharedPreferences sp0 = c.getSharedPreferences("application", 0);
                    inj = sp0.getBoolean("dtsx_inject", true);
                    style = Integer.parseInt(sp0.getString("dtsx_style", "1"));
                    play = sp0.getBoolean("dtsx_play", false);
                } catch (Throwable t) { inj = true; style = 1; play = false; }
                android.util.Log.i("DtsReal", "pref 轮询线程启动 (基线 inj=" + inj + " style=" + style + " play=" + play + ")");
                while (true) {
                    try {
                        android.content.SharedPreferences sp = c.getSharedPreferences("application", 0);
                        boolean inj2 = sp.getBoolean("dtsx_inject", true);
                        int style2 = Integer.parseInt(sp.getString("dtsx_style", "1"));
                        boolean play2 = sp.getBoolean("dtsx_play", false);
                        boolean injectNow = sp.getBoolean("dtsx_inject_now", false);
                        boolean showLog = sp.getBoolean("dtsx_inject_log", false);
                        if (inj2 != inj) { inj = inj2; setInject(inj2); android.util.Log.i("DtsReal", "轮询 dtsx_inject -> " + inj); }
                        if (style2 != style) { style = style2; setStyle(style); android.util.Log.i("DtsReal", "轮询 dtsx_style -> " + style); }
                        if (play2 != play) {
                            play = play2;
                            com.ksn.audiomax.core.DtsRealX.setPlay(c, style, play2);
                            android.util.Log.i("DtsReal", "轮询 dtsx_play -> " + play + " 已触发 setPlay");
                        }
                        // 「立即注入 DTS 到系统」: 翻到 on 就后台跑注入 + 报结果, 再自动复位
                        if (injectNow) {
                            final android.content.Context cc = c;
                            new java.lang.Thread(new java.lang.Runnable() {
                                public void run() {
                                    try {
                                        int r = com.ksn.audiomax.core.KsnDtsSys.inject(cc, "manual");
                                        android.util.Log.i("DtsReal", "立即注入 rc=" + r + " 结果=" + com.ksn.audiomax.core.KsnDtsSys.lastResult());
                                        com.ksn.audiomax.core.KsnDtsSys.toastResult(cc);
                                    } catch (Throwable ignored) {}
                                    try { cc.getSharedPreferences("application", 0).edit().putBoolean("dtsx_inject_now", false).apply(); } catch (Throwable ignored) {}
                                }
                            }, "dtsx-inject").start();
                        }
                        // 「注入执行日志」: 翻到 on 弹一次日志/结果, 再复位
                        if (showLog) {
                            try { com.ksn.audiomax.core.KsnDtsSys.toastResult(c); } catch (Throwable ignored) {}
                            try { c.getSharedPreferences("application", 0).edit().putBoolean("dtsx_inject_log", false).apply(); } catch (Throwable ignored) {}
                        }
                    } catch (Throwable ignored) {}
                    try { java.lang.Thread.sleep(1500); } catch (InterruptedException e) { break; }
                }
            }
        }, "dtsx-poll").start();
    }

    private static void applyFromPrefs(android.content.SharedPreferences sp) {
        try {
            setInject(sp.getBoolean("dtsx_inject", true));
            setStyle(Integer.parseInt(sp.getString("dtsx_style", "1")));
        } catch (Throwable ignored) {}
    }
}
