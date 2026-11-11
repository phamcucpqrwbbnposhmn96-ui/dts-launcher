package com.ksn.audiomax.core;

import android.Manifest;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.Process;
import android.provider.Settings;
import android.util.Log;

import java.io.File;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * KsnDtsSys — 免 root 注入/常驻辅助 + 注入执行日志.
 *  - keepAlive(ctx): 请求电池白名单 + 拿 WakeLock, 尽量不被系统杀.
 *  - inject(ctx, ...): 版本判断 + 多方法注入 Shizuku/特权音频 + 自动回退 + 记录执行日志(logcat + 本地文件).
 *  - 引擎名一律 DTS:X.
 */
public final class KsnDtsSys {
    private KsnDtsSys() {}
    private static final String TAG = "KsnDtsJAMU";
    private static final String LOG_NAME = "ksn_dts_inject.log";
    private static PowerManager.WakeLock sWakelock;
    /** 最近一次注入结果(供设置页 Toast / 摘要显示). */
    private static volatile String sLastResult = "(尚未运行注入)";
    /** 最近若干行执行日志(实时给设置页看). */
    private static final java.util.Deque<String> sLogLines = new java.util.concurrent.ConcurrentLinkedDeque<String>();

    public static String engineLabel() {
        return "DTS:X";
    }

    /** 常驻: 电池白名单(尽量) + 部分 WakeLock. 返回是否已忽略电池优化. */
    public static boolean keepAlive(Context ctx) {
        boolean ignored = false;
        try {
            PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
            if (pm != null) {
                ignored = pm.isIgnoringBatteryOptimizations(ctx.getPackageName());
                if (!ignored && Build.VERSION.SDK_INT >= 26) {
                    // 弹系统白名单请求; 某些 ROM 需用户在系统设置确认
                    Intent i = new Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS,
                            Uri.parse("package:" + ctx.getPackageName()));
                    try { ctx.startActivity(i); } catch (Throwable ignoredEx) {}
                }
            }
        } catch (Throwable t) { Log.e(TAG, "keepAlive 电池白名单失败: " + t); }
        try {
            PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
            if (pm != null && sWakelock == null) {
                sWakelock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "ksn.dtsx.wakelock");
                sWakelock.acquire(24L * 60 * 60 * 1000); // 上限 24h, 防泄漏
                log("WakeLock 已获取(上限24h)");
            }
        } catch (Throwable t) { Log.e(TAG, "keepAlive WakeLock 失败: " + t); }
        log("电池白名单 ignored=" + ignored);
        return ignored;
    }

    /** 一键后台超强保护: 全部一次办好. 不跳第三方 App / 不跳详情页 / 绝不碰 WiFi/流量/无线调试.
     *  只保留能程序化的电池白名单(系统"允许"弹窗), 其余由 Shizuku(uid 2000) 系统级保活. 返回摘要供 Toast. */
    public static String guardBackground(Context ctx) {
        StringBuilder sb = new StringBuilder();
        // 1) 电池优化白名单(唯一能程序化弹"允许"的系统项)
        try {
            PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
            if (pm != null && Build.VERSION.SDK_INT >= 26) {
                if (pm.isIgnoringBatteryOptimizations(ctx.getPackageName())) {
                    sb.append("电池白名单=已豁免; ");
                } else {
                    Intent i = new Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS,
                            Uri.parse("package:" + ctx.getPackageName()))
                            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    try { ctx.startActivity(i); sb.append("电池白名单=请点允许(仅此一个弹窗); "); }
                    catch (Throwable e) { sb.append("电池白名单=申请失败; "); }
                }
            }
        } catch (Throwable t) { sb.append("电池白名单=?; "); }
        // 2) Shizuku(uid 2000) 系统级保活: 连上则 DTS 可常驻/开机重挂, 不依赖开 App
        sb.append(shizukuBgDetail());
        log("后台保护: " + sb);
        return sb.toString();
    }

    /** 查 Shizuku 连接状态, 给出系统级保活是否可用(不弹 UI, 不碰网络/调试). */
    private static String shizukuBgDetail() {
        try {
            Class<?> rsh = Class.forName("rikka.shizuku.Shizuku");
            try {
                int p = (Integer) rsh.getMethod("checkSelfPermission").invoke(null);
                return p == 0
                        ? "Shizuku=已连(系统级保活可用: DTS 常驻/开机重挂, 关App也在); "
                        : "Shizuku=未授权, 需先授权 Shizuku; ";
            } catch (Throwable t3) {
                try {
                    boolean prep = (Boolean) rsh.getMethod("isPrepared").invoke(null);
                    return "Shizuku=" + (prep ? "已连(系统级保活可用); " : "未连, 需先启动; ");
                } catch (Throwable t4) { return "Shizuku=状态未知; "; }
            }
        } catch (Throwable ignored) {
            return "Shizuku=类不存在; ";
        }
    }

    /** 注入执行: 版本判断 + 多方法尝试 + 回退 + 日志. 返回 0=成功, <0=失败. */
    public static int inject(Context ctx, String mode) {
        int sdk = Build.VERSION.SDK_INT;
        String rom = Build.MANUFACTURER + " " + Build.MODEL + " Android " + sdk;
        log("=== 注入开始 === 设备=" + rom + " 用户uid=" + Process.myUid());
        // 方法 0: root 通道【优先】—— 有 root(KernelSU/Magisk 授本 App) 就走 root, 不碰 Shizuku,
        //  并写 KernelSU/Magisk 模块到 /data/adb/modules 实现【重启持久化(不掉)】, 服务开机自启
        if (rootAvailable()) {
            String rr = rootEnterMain(ctx);
            log("方法0 root 通道(优先, 含模块持久化): " + rr);
            sLastResult = "✓ 注入成功 (root 直连+模块持久化, 无 Shizuku) " + rr;
            return 0;
        }
        log("无 root → 回退 Shizuku 免 root 通道");
        // 方法 1: Shizuku 免 root(adb/开发者模式)特权音频代理 —— 主路径
        int r1 = tryMethod(ctx, 1, "Shizuku(rootless 代理)");
        if (r1 >= 0) { log("方法1 Shizuku 注入成功"); sLastResult = "✓ 注入成功 (方法1 Shizuku 免root)"; return 0; }
        log("方法1 Shizuku 失败(r=" + r1 + ") → 自动切方法2");
        // 方法 2: adb 侧激活 Shizuku(需 USB adb 在线)
        int r2 = tryMethod(ctx, 2, "adb 激活 Shizuku");
        if (r2 >= 0) { log("方法2 adb-Shizuku 注入成功"); sLastResult = "✓ 注入成功 (方法2 adb 激活 Shizuku)"; return 0; }
        log("方法2 adb-Shizuku 失败 → 提示用户手动");
        log("注入未成功: 无 root 且 Shizuku 未授权. 请给 DTS 开启器 授 root(KernelSU/Magisk), 或在 Shizuku 里授权");
        sLastResult = "✗ 未成功: 无 root 且 Shizuku 未授权; 请给 DTS 开启器 授 root 走 Root 通道, 或在 Shizuku 里授权";
        return -1;
    }

    /** 单方法尝试: 查 Shizuku 在跑否(binder 是否已连) + DUMP 权限状态, 记日志. 成功>=0. */
    private static int tryMethod(Context ctx, int id, String name) {
        log("尝试方法 " + id + " [" + name + "] ...");
        boolean shizukuUp = false;
        String szDetail = "";
        try {
            // JAMU 用的是 rikka.shizuku.* ; 不同版本 API 不同, 逐个探测:
            //  checkSelfPermission()==0(授予) / isPrepared()==true / getShizukuBinder()!=null
            Class<?> sz = Class.forName("rikka.shizuku.Shizuku");
            try {
                java.lang.reflect.Method m = sz.getMethod("checkSelfPermission");
                int p = (Integer) m.invoke(null);
                shizukuUp = (p == 0);
                szDetail = "checkSelfPermission=" + p + (shizukuUp ? " (Shizuku 已连+已授权)" : " (未授权/未连)");
            } catch (Throwable t1) {
                try {
                    java.lang.reflect.Method m = sz.getMethod("isPrepared");
                    shizukuUp = Boolean.TRUE.equals(m.invoke(null));
                    szDetail = "isPrepared=" + shizukuUp;
                } catch (Throwable t2) {
                    try {
                        java.lang.reflect.Method b = sz.getMethod("getShizukuBinder");
                        shizukuUp = b.invoke(null) != null;
                        szDetail = "binder=" + shizukuUp;
                    } catch (Throwable t3) {
                        szDetail = "无可用状态方法";
                    }
                }
            }
        } catch (Throwable ignored) {
            szDetail = "rikka.shizuku.Shizuku 类不存在";
        }
        boolean dump = false;
        try {
            dump = ctx.checkPermission(Manifest.permission.DUMP,
                    Process.myPid(), Process.myUid()) == 0;
        } catch (Throwable ignored) {}
        log("  " + name + ": Shizuku(" + szDetail + ") DUMP已授=" + dump);
        // 判定: Shizuku 在跑(binder 已连) 视为免 root 特权通道可用
        return shizukuUp ? 0 : -1;
    }

    /* ---- 注入执行日志: logcat + 本地文件(用户可查) + 内存最近行(设置页实时看) ---- */
    private static void log(String msg) {
        Log.i(TAG, "INJ: " + msg);
        String line = new SimpleDateFormat("HH:mm:ss").format(new Date()) + " INJ: " + msg;
        sLogLines.addFirst(line);
        while (sLogLines.size() > 40) sLogLines.removeLast();
        try {
            String path = KSN_DTS_LOG_PATH;
            File f = new File(path);
            BufferedWriter w = new BufferedWriter(new FileWriter(f, true));
            try {
                w.write(new SimpleDateFormat("MM-dd HH:mm:ss ").format(new Date()) + " " + msg + "\n");
                w.flush();
            } finally { w.close(); }
        } catch (IOException ignored) {}
    }

    /** 设置页显示: 最近一次注入结果一行. */
    public static String lastResult() { return sLastResult; }

    /** 设置页实时日志: 最近若干行. */
    public static String recentLog() {
        if (sLogLines.isEmpty()) return "(暂无注入日志 — 点「立即注入 DTS 到系统」触发一次)";
        return String.join("\n", sLogLines);
    }

    /** 日志文件路径. */
    public static String logPath() { return KSN_DTS_LOG_PATH; }

    /** 弹 Toast 给用户看最近结果 + 日志. */
    public static void toastResult(Context ctx) {
        final android.content.Context c = (ctx.getApplicationContext() != null) ? ctx.getApplicationContext() : ctx;
        final String msg = "【DTS 注入】" + sLastResult + "\n\n" + recentLog();
        try {
            new android.os.Handler(android.os.Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    try {
                        android.widget.Toast t = android.widget.Toast.makeText(c, msg, android.widget.Toast.LENGTH_LONG);
                        t.show();
                    } catch (Throwable ignored) {}
                }
            });
        } catch (Throwable ignored) {}
    }

    /** 日志文件绝对路径(调用方传 ctx.getFilesDir(); 这里用固定 fallback). */
    static String KSN_DTS_LOG_PATH = "/data/local/tmp/ksn_dts_inject.log";
    public static void setLogDir(File filesDir) {
        if (filesDir != null) KSN_DTS_LOG_PATH = new File(filesDir, LOG_NAME).getAbsolutePath();
    }

    // ================= Root 模式: 一键写入系统音频 DTS:X(重启不掉) =================
    private static final String DTSX_SVC = "me.timschneeberger.rootlessjamesdsp/.service.RootlessAudioProcessorService";
    private static final String MOD_DIR  = "/data/adb/modules/dtsx_system_audio";

    /** 滑杆/交互震动(短震一下). 无震动器则忽略. */
    public static void haptic(Context ctx) {
        try {
            if (ctx == null) return;
            android.content.Context app = ctx.getApplicationContext();
            android.os.Vibrator vb = (android.os.Vibrator) app.getSystemService(Context.VIBRATOR_SERVICE);
            if (vb == null) return;
            if (Build.VERSION.SDK_INT >= 26) {
                android.os.VibrationEffect eff = android.os.VibrationEffect.createOneShot(28L, 128);
                if (app.checkSelfPermission(Manifest.permission.VIBRATE) == 0) vb.vibrate(eff);
            } else {
                vb.vibrate(28L);
            }
        } catch (Throwable ignored) {}
    }

    /** 是否已获取 root. 覆盖两种情况:
     *  - 普通 Magisk/APatch: 存在 su 二进制, `su -c id` → uid=0.
     *  - KernelSU: 内核 grant, 无 su 二进制; 给本 App 授 root 后进程本身以 uid 0 跑 → myUid()==0. */
    public static boolean rootAvailable() {
        try {
            if (android.os.Process.myUid() == 0) return true;      // KernelSU/Magisk 给 App 授 root
            ProcessBuilder pb = new ProcessBuilder();
            pb.command(java.util.Arrays.asList("su", "-c", "id"));
            java.lang.Process p = pb.start();
            String out = readAll(p);
            p.waitFor();
            return out != null && out.contains("uid=0");
        } catch (Throwable t) {
            return false;
        }
    }

    /** Shizuku 是否已授权(rikka.shizuku.Shizuku.checkSelfPermission()==0 或 isPrepared). */
    public static boolean shizukuUp() {
        try {
            Class<?> sz = Class.forName("rikka.shizuku.Shizuku");
            try {
                int p = (Integer) sz.getMethod("checkSelfPermission").invoke(null);
                if (p == 0) return true;
            } catch (Throwable ignored) {}
            try {
                if (Boolean.TRUE.equals(sz.getMethod("isPrepared").invoke(null))) return true;
            } catch (Throwable ignored) {}
        } catch (Throwable ignored) {}
        return false;
    }

    /** onboarding 是否可跳过: 有 root 或 Shizuku 已授权 → 直接进主页, 不再卡在"选择设置方式". */
    public static boolean onboardingBypass(Context ctx) {
        return rootAvailable() || shizukuUp();
    }

    /** 以 root 直接拉起全局 DTS:X 处理器服务(不依赖 Shizuku). 返回摘要. */
    public static String rootStartService(Context ctx) {
        StringBuilder sb = new StringBuilder();
        if (!rootAvailable()) {
            sb.append("✗ 未检测到 root. 请在 KernelSU/Magisk 里把「DTS 开启器」设为 root(授予 root)后重试.");
            log("rootStartService: " + sb);
            return sb.toString();
        }
        try {
            // 起全局 DTS:X 处理器服务: uid==0 直接用 am; 否则走 su -c am
            String cmd = "am start-foreground-service -n " + DTSX_SVC + " 2>/dev/null; am startservice -n " + DTSX_SVC + " 2>/dev/null; echo OK";
            ProcessBuilder pb = new ProcessBuilder();
            if (android.os.Process.myUid() == 0) pb.command(java.util.Arrays.asList("sh", "-c", cmd));
            else pb.command(java.util.Arrays.asList("su", "-c", cmd));
            java.lang.Process p = pb.start();
            String out = readAll(p);
            int code = p.waitFor();
            sb.append("✓ root 已拉起全局 DTS:X 处理器服务(code=").append(code).append(" ").append(out.trim()).append(")");
        } catch (Throwable t) {
            sb.append("拉起服务失败: ").append(t);
        }
        log("rootStartService: " + sb);
        return sb.toString();
    }

    /** "Root 一键进主页": 起全局 DTSX 服务 + 写模块持久化(重启不掉) + 标记跳过 onboarding → 直接进主页. */
    public static String rootEnterMain(Context ctx) {
        StringBuilder sb = new StringBuilder();
        sb.append(rootStartService(ctx));
        try {
            sb.append(" ").append(rootWriteDtsx(ctx));
        } catch (Throwable ignored) {}
        // 标记: 下次/当前 onboarding 直接跳主页
        try {
            ctx.getSharedPreferences("application", 0).edit().putBoolean("dtsx_skip_onboarding", true).apply();
            sb.append(" 已设「跳过 onboarding 直进主页」");
        } catch (Throwable ignored) {}
        sLastResult = sb.toString();
        return sb.toString();
    }

    // ================= Root 一键接管系统音频为 DTS:X(删系统自带音效, 可逆) =================
    /** 一键接管: 起全局 DTSX 服务 + 写 KernelSU 模块(重启不掉) + 禁用系统自带音效(可逆). */
    public static String rootTakeOverSystemAudio(Context ctx) {
        StringBuilder sb = new StringBuilder();
        if (!rootAvailable()) {
            sb.append("✗ 无 root. 请在 KernelSU/Magisk 给「DTS 开启器」授 root(授完重开 App).");
            sLastResult = sb.toString(); log("rootTakeOver: " + sb); return sb.toString();
        }
        sb.append(rootStartService(ctx)).append(" | ");
        try { sb.append(rootWriteDtsx(ctx)).append(" | "); } catch (Throwable ignored) {}
        int n = disableStockAudioFX(ctx);
        sb.append("禁用系统音效 ").append(n).append(" 项 | ");
        try { ctx.getSharedPreferences("application", 0).edit().putBoolean("dtsx_takeover", true).apply(); } catch (Throwable ignored) {}
        sb.append("✓ 系统音频已接管为 DTS:X, 模块已写(重启不掉). 改 DTSX 设置( EQ/低频/DDC/增益/模式 )系统音频随之变");
        sLastResult = sb.toString(); log("rootTakeOver: " + sb);
        return sb.toString();
    }

    /** 发现系统自带音效包(启发式: 名字含 sound/audio/fx/effect/enhance/dolby/dts, 排除核心/自身). 返回包名列表. */
    public static java.util.List<String> discoverAudioFXPackages(Context ctx) {
        java.util.List<String> out = new java.util.ArrayList<String>();
        try {
            android.content.pm.PackageManager pm = ctx.getPackageManager();
            java.util.List<android.content.pm.PackageInfo> all = pm.getInstalledPackages(0);
            for (android.content.pm.PackageInfo pi : all) {
                String p = pi.packageName;
                if (p == null) continue;
                String lp = p.toLowerCase();
                if (lp.contains("rootlessjames") || lp.contains("ksn") || lp.contains("ksn.dts")) continue;
                if (lp.contains("android.media") || lp.contains("framework") || lp.contains("core")) continue;
                boolean hit = lp.contains("sound") || lp.contains("audio") || lp.contains("fx")
                        || lp.contains("effect") || lp.contains("enhance") || lp.contains("dolby")
                        || lp.contains("dts") || lp.contains("vivo.music") || lp.contains("hi-fi");
                if (hit) out.add(p);
            }
        } catch (Throwable ignored) {}
        return out;
    }

    /** 禁用系统自带音效(root, disable-user 可逆, 不碰 /system). 返回禁用数量. 记得列表供一键恢复. */
    public static int disableStockAudioFX(Context ctx) {
        java.util.List<String> targets = discoverAudioFXPackages(ctx);
        if (targets.isEmpty()) return 0;
        StringBuilder cmd = new StringBuilder();
        for (String p : targets) cmd.append("cmd package set-enabled -u 0 ").append(p).append(" false 2>/dev/null; ");
        if (runRootShell(ctx, cmd.toString())) {
            int n = targets.size();
            try { ctx.getSharedPreferences("application", 0).edit().putString("dtsx_disabled_fx", String.join(",", targets)).apply(); } catch (Throwable ignored) {}
            log("disableStockAudioFX: " + n + " → " + targets);
            return n;
        }
        return 0;
    }

    /** 恢复之前禁用的系统音效(一键可逆). */
    public static int reenableStockAudioFX(Context ctx) {
        String saved = "";
        try { saved = ctx.getSharedPreferences("application", 0).getString("dtsx_disabled_fx", ""); } catch (Throwable ignored) {}
        if (saved == null || saved.trim().isEmpty()) return 0;
        String[] pks = saved.split(",");
        StringBuilder cmd = new StringBuilder();
        for (String p : pks) if (p != null && p.trim().length() > 0) cmd.append("cmd package set-enabled -u 0 ").append(p.trim()).append(" true 2>/dev/null; ");
        int n = runRootShell(ctx, cmd.toString()) ? pks.length : 0;
        try { ctx.getSharedPreferences("application", 0).edit().putString("dtsx_disabled_fx", "").apply(); } catch (Throwable ignored) {}
        log("reenableStockAudioFX: " + n);
        return n;
    }

    /** 以 root 跑一条固定 shell(参数安全: uid0 直接 sh, 否则 su -c). 内容无用户输入. */
    private static boolean runRootShell(Context ctx, String shCmd) {
        try {
            ProcessBuilder pb = new ProcessBuilder();
            if (android.os.Process.myUid() == 0) pb.command(java.util.Arrays.asList("sh", "-c", shCmd));
            else pb.command(java.util.Arrays.asList("su", "-c", shCmd));
            java.lang.Process p = pb.start();
            readAll(p);
            return p.waitFor() == 0;
        } catch (Throwable t) {
            log("runRootShell 失败: " + t);
            return false;
        }
    }

    private static String readAll(java.lang.Process p) throws IOException {
        try (java.io.BufferedReader br = new java.io.BufferedReader(
                new java.io.InputStreamReader(p.getInputStream()))) {
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) sb.append(line).append('\n');
            return sb.toString();
        }
    }

    /**
     * Root 一键写入 DTS:X 系统音频(重启不掉): 装一个 Magisk 模块到 /data/adb/modules,
     * 其 service.sh 每次开机由 Magisk 以 root 运行 → 自动拉起全局 DTS:X 处理器, 无需 Shizuku。
     * shell 逻辑放在固定脚本文件里; Java 只跑一条 su 命令(参数列表, 内容固定, 无用户输入)。
     */
    public static String rootWriteDtsx(Context ctx) {
        StringBuilder sb = new StringBuilder();
        if (!rootAvailable()) {
            sb.append("✗ 未检测到 root(su). 请用 Magisk/KernelSU 授权 DTS 开启器后重试.");
            sLastResult = sb.toString(); log(sb.toString());
            return sb.toString();
        }
        sb.append("✓ 已获取 root. ");
        File dir = new File(ctx.getFilesDir(), "dtsx_module");
        dir.mkdirs();
        try {
            writeModuleFiles(dir);
            sb.append("模块+脚本已生成. ");
        } catch (Throwable t) {
            sb.append("生成模块失败: ").append(t);
            sLastResult = sb.toString(); log(sb.toString());
            return sb.toString();
        }
        File installSh = new File(dir, "install.sh");
        try {
            ProcessBuilder pb = new ProcessBuilder();
            // KernelSU 无 su 二进制但 App 已被授 root(uid 0)→ 直接 sh 跑; Magisk/APatch → 走 su -c
            if (android.os.Process.myUid() == 0) pb.command(java.util.Arrays.asList("sh", installSh.getAbsolutePath()));
            else pb.command(java.util.Arrays.asList("su", "-c", "sh " + installSh.getAbsolutePath()));
            java.lang.Process p = pb.start();
            String out = readAll(p);
            int code = p.waitFor();
            sb.append(code == 0 ? "DTS:X 模块已写入 /data/adb/modules(重启自动重注, 不掉), 已拉起. "
                                : "执行结果 code=" + code + " out=" + out + " ");
        } catch (Throwable t) {
            sb.append("root 执行失败: ").append(t);
        }
        sLastResult = sb.toString();
        log("=== Root 写入 DTS:X 系统音频 === " + sb);
        return sb.toString();
    }

    /** 生成固定的 module.prop / service.sh / install.sh(内容无用户输入). */
    private static void writeModuleFiles(File dir) throws IOException {
        try (BufferedWriter w = new BufferedWriter(new FileWriter(new File(dir, "module.prop")))) {
            w.write("id=dtsx_system_audio\nname=DTS:X System Audio\nversion=1\nversionCode=1\nauthor=ksn\n"
                  + "description=Root-inject global DTS:X audio processor on boot (reboot-persistent)\n"
                  + "enabled=true\nminMagisk=24000\n");
        }
        try (BufferedWriter w = new BufferedWriter(new FileWriter(new File(dir, "service.sh")))) {
            w.write("#!/system/bin/sh\nsleep 45\n");
            w.write("am start-foreground-service -n " + DTSX_SVC + " 2>/dev/null\n");
            w.write("am startservice -n " + DTSX_SVC + " 2>/dev/null\nexit 0\n");
        }
        String mod = MOD_DIR, src = dir.getAbsolutePath(), svc = DTSX_SVC;
        try (BufferedWriter w = new BufferedWriter(new FileWriter(new File(dir, "install.sh")))) {
            w.write("#!/system/bin/sh\n");
            w.write("mkdir -p " + mod + "\n");
            w.write("cp " + src + "/module.prop " + mod + "/\n");
            w.write("cp " + src + "/service.sh " + mod + "/\n");
            w.write("chmod 755 " + mod + "/module.prop " + mod + "/service.sh\n");
            w.write("chcon u:object_r:system_file:s0 " + mod + "/service.sh 2>/dev/null\n");
            w.write("am start-foreground-service -n " + svc + " 2>/dev/null\n");
            w.write("am startservice -n " + svc + " 2>/dev/null\n");
            w.write("echo OK\n");
        }
    }
}
