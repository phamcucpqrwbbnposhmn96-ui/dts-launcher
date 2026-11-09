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
        Log.i(TAG, "BOOT 触发: " + act + " → 重新注入 DTS");
        try {
            PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
            if (pm != null) {
                PowerManager.WakeLock wl = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "ksn.dtsx.boot");
                wl.acquire(10 * 60 * 1000);
                wl.release();
            }
            // 重新请求电池白名单(尽量持久)
            KsnDtsSys.keepAlive(ctx);
            // 若 DTS 引擎在, 重新套用(幂等)
            try { KsnDtsSys.inject(ctx, "boot"); } catch (Throwable ignored) {}
        } catch (Throwable t) {
            Log.e(TAG, "BOOT 重注入失败: " + t);
        }
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
