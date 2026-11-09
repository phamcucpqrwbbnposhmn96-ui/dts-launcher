package com.ksn.audiomax.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;

/**
 * KsnDtsBoot — 免 root "重启后自动重新注入 DTS" 机制.
 *  BOOT_COMPLETED / QUICKBOOT / USER_PRESENT 时: 拿 WakeLock + 重新挂 DTS 音效,
 *  使 DTS 注入"开机自动生效、一直不掉"(免 root; 不改 /system 分区).
 */
public final class KsnDtsBoot extends BroadcastReceiver {
    private static final String TAG = "KsnDtsJAMU";

    @Override
    public void onReceive(Context ctx, Intent intent) {
        String act = intent.getAction() == null ? "?" : intent.getAction();
        Log.i(TAG, "BOOT 触发: " + act + " → 重新注入 DTS + 重启处理器服务(免开 App)");
        try {
            PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
            if (pm != null) {
                PowerManager.WakeLock wl = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "ksn.dtsx.boot");
                wl.acquire(10 * 60 * 1000);
                wl.release();
            }
            // 重新请求电池白名单(尽量持久)
            KsnDtsSys.keepAlive(ctx);
            // 免 root 注入(Shizuku 通道)幂等重挂
            try { KsnDtsSys.inject(ctx, "boot"); } catch (Throwable ignored) {}
            // 核心: 重启 JAMU 的 DTS 处理器前台服务 → DTS 重新挂到系统音频输出, 无需开 App
            boolean on = true;
            try {
                on = ctx.getSharedPreferences("application", 0).getBoolean("dtsx_inject", true);
            } catch (Throwable ignored) {}
            if (on) restartProcessor(ctx);
        } catch (Throwable t) {
            Log.e(TAG, "BOOT 重注入失败: " + t);
        }
    }

    /** 开机后(延迟 + 重试)重启 JAMU DTS 处理器前台服务, 等 Shizuku 连上再挂. */
    private static void restartProcessor(final Context appCtx) {
        final Context base = (appCtx.getApplicationContext() != null) ? appCtx.getApplicationContext() : appCtx;
        new Thread(new Runnable() {
            public void run() {
                for (int i = 0; i < 10; i++) {
                    try {
                        // 等 Shizuku 起来(开机早期可能还没连上), 重试 10 次每次 6s
                        boolean shz = false;
                        try {
                            Class<?> sz = Class.forName("rikka.shizuku.Shizuku");
                            try {
                                shz = ((Integer) sz.getMethod("checkSelfPermission").invoke(null)) == 0;
                            } catch (Throwable t2) {
                                try { shz = sz.getMethod("isPrepared").invoke(null) == Boolean.TRUE; } catch (Throwable t3) {}
                            }
                        } catch (Throwable ignored) {}
                        if (!shz) { try { java.lang.Thread.sleep(6000); } catch (Throwable ignored) {} continue; }
                        android.content.Intent svc = new android.content.Intent()
                                .setClassName("me.timschneeberger.rootlessjamesdsp",
                                             "me.timschneeberger.rootlessjamesdsp.service.RootlessAudioProcessorService");
                        if (android.os.Build.VERSION.SDK_INT >= 26) {
                            base.startForegroundService(svc);
                        } else {
                            base.startService(svc);
                        }
                        Log.i("KsnDtsJAMU", "BOOT: 已重启 DTS 处理器服务(第" + (i + 1) + "次尝试, Shizuku 在)");
                        return;
                    } catch (Throwable t) {
                        Log.w("KsnDtsJAMU", "BOOT 重启处理器服务异常: " + t);
                        try { java.lang.Thread.sleep(6000); } catch (Throwable ignored) {}
                    }
                }
            }
        }, "ksn-boot-resvc").start();
    }

    /** 动态注册开机监听(保险; manifest 已静态注册). */
    public static void register(Context ctx) {
        try {
            IntentFilter f = new IntentFilter();
            f.addAction(Intent.ACTION_BOOT_COMPLETED);
            f.addAction(Intent.ACTION_USER_PRESENT);
            f.addAction("com.htc.intent.action.QUICKBOOT_POWERON");
            f.addAction("com.lge.intent.action.QUICKBOOT_POWERON");
            int flags = 0;
            if (Build.VERSION.SDK_INT >= 33) flags = 1; // RECEIVER_EXPORTED
            if (Build.VERSION.SDK_INT >= 26) ctx.registerReceiver(new KsnDtsBoot(), f, flags);
            else ctx.registerReceiver(new KsnDtsBoot(), f);
        } catch (Throwable ignored) {}
    }
}
