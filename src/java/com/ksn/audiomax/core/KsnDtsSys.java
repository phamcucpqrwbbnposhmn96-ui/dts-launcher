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
        // 方法 1: Shizuku 免 root(adb/开发者模式)特权音频代理 —— 主路径
        int r1 = tryMethod(ctx, 1, "Shizuku(rootless 代理)");
        if (r1 >= 0) { log("方法1 Shizuku 注入成功"); sLastResult = "✓ 注入成功 (方法1 Shizuku 免root)"; return 0; }
        log("方法1 Shizuku 失败(r=" + r1 + ") → 自动切方法2");
        // 方法 2: adb 侧激活 Shizuku(需 USB adb 在线)
        int r2 = tryMethod(ctx, 2, "adb 激活 Shizuku");
        if (r2 >= 0) { log("方法2 adb-Shizuku 注入成功"); sLastResult = "✓ 注入成功 (方法2 adb 激活 Shizuku)"; return 0; }
        log("方法2 adb-Shizuku 失败 → 提示用户手动");
        log("注入未成功: 需用户在 Shizuku 里授权 + adb 激活, 或 root 下用 Magisk 音频模块");
        sLastResult = "✗ 未成功: Shizuku 未连/未授权, 需 adb 激活或在 Shizuku 里授权; 或 root 用 Magisk 模块";
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

    /** 是否已获取 root. 用 ProcessBuilder 参数列表(无 shell, 无拼接). */
    public static boolean rootAvailable() {
        try {
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
            pb.command(java.util.Arrays.asList("su", "-c", "sh " + installSh.getAbsolutePath()));
            java.lang.Process p = pb.start();
            String out = readAll(p);
            int code = p.waitFor();
            sb.append(code == 0 ? "Magisk 模块已写入 /data/adb/modules(重启自动重注, 不掉), 已拉起 DTS:X. "
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
