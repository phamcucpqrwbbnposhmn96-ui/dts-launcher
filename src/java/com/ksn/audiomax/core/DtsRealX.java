package com.ksn.audiomax.core;

/**
 * 真 DTS:X 解码引擎 —— 接入的是真正的开源 DTS:X 解码器源码(almirus/DTSX_decoder,
 *  object + XLL + 床声 + PARMA/盲渲染 + dca_bed 全链路), 编成 aarch64 .so(libdtsxreal.so).
 *
 *  与 DtsReal(dcaenc+dcadec 实时往返) 不同: 这里做的是"真·文件级 DTS:X 解码":
 *  拿一个 DTS / DTS-HD / DTS:X 源文件, 真解码 + 渲染到目标扬声器布局, 输出渲染后的 WAV.
 *  这就是"接入真正的 DTS 解码代码"。
 */
public final class DtsRealX {
    private DtsRealX() {}

    /** 复用 DtsReal 的风格常量: 0 标准 / 1 影院 / 2 外放. */
    public static final int STYLE_STANDARD = 0, STYLE_CINEMA = 1, STYLE_EXTERNAL = 2;

    /** 原生解码库是否加载成功. */
    public static volatile boolean ready = false;

    static {
        try {
            System.loadLibrary("dtsxreal");
            ready = true;
        }
        catch (Throwable t) {
            t.printStackTrace();
            ready = false;
        }
    }

    /** 引擎自检: 返回引擎标识(非空=库已就位). */
    public static String engineName() {
        if (!ready) return "DTS:X engine 未加载";
        try {
            return nativeEngineName();
        }
        catch (Throwable t) { return "DTS:X engine(调用失败)"; }
    }

    /** 探测源文件大小(字节), 失败 -1. */
    public static int probeFile(java.io.File f) {
        if (!ready || f == null) return -1;
        try {
            return nativeProbeSize(f.getAbsolutePath());
        }
        catch (Throwable t) { return -1; }
    }

    /**
     * 真 DTS:X 解码: 把 DTS/DTS-HD/DTS:X 源文件 in 解码并渲染成 outWav(渲染后 PCM).
     * style: STYLE_STANDARD(5.1) / STYLE_CINEMA(7.1.4) / STYLE_EXTERNAL(立体声).
     * 返回 0 成功; 负数失败.
     */
    public static int decodeFile(java.io.File in, int style, java.io.File outWav) {
        if (!ready || in == null || outWav == null) return -1;
        int s = (style >= 0 && style <= 2) ? style : STYLE_CINEMA;
        try {
            return nativeDecodeFile(in.getAbsolutePath(), outWav.getAbsolutePath(), s);
        }
        catch (Throwable t) {
            t.printStackTrace();
            return -1;
        }
    }

    private static native String nativeEngineName();
    private static native int nativeProbeSize(String path);
    private static native int nativeDecodeFile(String inPath, String outWav, int style);

    // ---- 真 DTS:X 解码播放: 拷内置 DTS 素材 → 真解码渲染成 WAV → MediaPlayer 出声 ----
    private static final java.lang.Object playerLock = new java.lang.Object();
    private static android.media.MediaPlayer player;
    private static java.lang.Thread workThread;

    /** 在后台线程: 解内置 DTS 素材并渲染成 targetWav. 返回 0 成功, 负数失败. */
    public static int decodeBundled(android.content.Context ctx, int style, java.io.File targetWav) {
        if (!ready || ctx == null || targetWav == null) return -1;
        try {
            java.io.File outDir = targetWav.getAbsoluteFile().getParentFile();
            if (outDir != null && !outDir.exists()) outDir.mkdirs();
            // 挑一个内置素材拷贝到 files 目录(assets 路径不能直接喂 ffmpeg 式解码器)
            java.io.File src = new java.io.File(ctx.getFilesDir(), "dtsx_src.dts");
            if (!src.exists() || src.length() == 0) {
                java.io.InputStream is = ctx.getAssets().open("dts/dts_in_chains.dts");
                java.io.OutputStream os = new java.io.FileOutputStream(src);
                byte[] buf = new byte[65536]; int r;
                while ((r = is.read(buf)) > 0) os.write(buf, 0, r);
                os.close(); is.close();
            }
            int rc = nativeDecodeFile(src.getAbsolutePath(), targetWav.getAbsolutePath(),
                    (style >= 0 && style <= 2) ? style : STYLE_CINEMA);
            return rc;
        }
        catch (Throwable t) {
            t.printStackTrace();
            return -1;
        }
    }

    /** 开关"真 DTS:X 解码播放". on=true 起后台解码+播放, on=false 停止. 全部 try/catch, 不抛到调用方. */
    public static void setPlay(android.content.Context ctx, int style, boolean on) {
        if (ctx == null) return;
        android.util.Log.i("DtsRealX", "setPlay on=" + on + " style=" + style + " ready=" + ready);
        synchronized (playerLock) {
            stopPlayer();
            if (!on) return;
            workThread = new java.lang.Thread(new java.lang.Runnable() {
                public void run() {
                    try {
                        java.io.File wav = new java.io.File(ctx.getFilesDir(), "dtsx_render.wav");
                        int rc = decodeBundled(ctx, style, wav);
                        android.util.Log.i("DtsRealX", "decode rc=" + rc + " wav=" + wav
                                + " exists=" + wav.exists() + " len=" + (wav.exists() ? wav.length() : -1));
                        if (rc != 0 || !wav.exists() || wav.length() == 0) {
                            android.util.Log.w("DtsRealX", "解码失败, 跳过播放 (rc=" + rc + ")");
                            return;
                        }
                        synchronized (playerLock) {
                            if (player != null) stopPlayer();
                            player = android.media.MediaPlayer.create(ctx,
                                    new android.net.Uri.Builder().scheme("file")
                                            .path(wav.getAbsolutePath()).build());
                            if (player == null) { android.util.Log.w("DtsRealX", "MediaPlayer.create 返回 null"); return; }
                            player.setOnCompletionListener(
                                    new android.media.MediaPlayer.OnCompletionListener() {
                                        public void onCompletion(android.media.MediaPlayer mp) {
                                            synchronized (playerLock) { stopPlayer(); }
                                        }
                                    });
                            player.start();
                            android.util.Log.i("DtsRealX", "MediaPlayer.start() 已播放真解码 WAV");
                        }
                    }
                    catch (Throwable t) {
                        android.util.Log.w("DtsRealX", "play 异常: " + t);
                    }
                }
            }, "dtsx-play");
            workThread.start();
        }
    }

    private static void stopPlayer() {
        if (player != null) {
            try { player.stop(); } catch (Throwable ignored) {}
            try { player.reset(); } catch (Throwable ignored) {}
            try { player.release(); } catch (Throwable ignored) {}
            player = null;
        }
    }
}
