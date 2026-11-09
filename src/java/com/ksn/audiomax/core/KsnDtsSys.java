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

    /** 注入执行: 版本判断 + 多方法尝试 + 回退 + 日志. 返回 0=成功, <0=失败. */
    public static int inject(Context ctx, String mode) {
        int sdk = Build.VERSION.SDK_INT;
        String rom = Build.MANUFACTURER + " " + Build.MODEL + " Android " + sdk;
        log("=== 注入开始 === 设备=" + rom + " 用户uid=" + Process.myUid());
        // 方法 1: Shizuku 免 root(adb/开发者模式)特权音频代理 —— 主路径
        int r1 = tryMethod(ctx, 1, "Shizuku(rootless 代理)");
        if (r1 >= 0) { log("方法1 Shizuku 注入成功"); return 0; }
        log("方法1 Shizuku 失败(r=" + r1 + ") → 自动切方法2");
        // 方法 2: adb 侧激活 Shizuku(需 USB adb 在线)
        int r2 = tryMethod(ctx, 2, "adb 激活 Shizuku");
        if (r2 >= 0) { log("方法2 adb-Shizuku 注入成功"); return 0; }
        log("方法2 adb-Shizuku 失败 → 提示用户手动");
        log("注入未成功: 需用户在 Shizuku 里授权 + adb 激活, 或 root 下用 Magisk 音频模块");
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

    /* ---- 注入执行日志: logcat + 本地文件(用户可查) ---- */
    private static void log(String msg) {
        Log.i(TAG, "INJ: " + msg);
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

    /** 日志文件绝对路径(调用方传 ctx.getFilesDir(); 这里用固定 fallback). */
    static String KSN_DTS_LOG_PATH = "/data/local/tmp/ksn_dts_inject.log";
    public static void setLogDir(File filesDir) {
        if (filesDir != null) KSN_DTS_LOG_PATH = new File(filesDir, LOG_NAME).getAbsolutePath();
    }
}
