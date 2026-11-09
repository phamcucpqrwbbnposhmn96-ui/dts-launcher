package com.ksn.audiomax.core;

import android.content.Context;
import android.media.audiofx.Equalizer;
import android.media.audiofx.LoudnessEnhancer;
import android.media.audiofx.Virtualizer;
import android.util.Log;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/**
 * KsnDts / JAMU 全局代理:
 *  不把预设 DTS 文件播出来。而是把 JAMU 捕获(监听)到的其它 app 音频,
 *  经重输出 track 的 audioSession 叠一层 DTS 风格 DSP(均衡/环绕/响度)再出声,
 *  即"监听 → 经我软件改为 DTS → 出 DTS 声"。
 *
 *  applyDts(sessionId): JAMU startRecording 捕获循环里, 挂在它输出 AudioTrack 的 session 上。
 *  releaseDts():        JAMU stopRecording 时释放。
 *  probe(ctx):          反射 IPermissionManager grant*, 验 Android 15 签名。
 *
 *  全部走反射构造/配置: 兼容不同版本 audiofx 桩签名, 运行时用 3 参 session 版(API30+)。
 */
public final class DtsSelfTest {
    private static final String TAG = "KsnDtsJAMU";
    private static final int SESSION = -1;

    private static Object eq;
    private static Object virt;
    private static Object loud;
    private static int dtsSession = -1;
    /** DTS:X 风格: 0 标准, 1 影院环绕, 2 外放. 每套真不同的 EQ/环绕/响度 profile. */
    public static volatile int style = 1;

    private DtsSelfTest() {}

    /** 切风格: 设 style, 若已注入则立即重套 profile(可听出差别). */
    public static synchronized void setStyle(int s) {
        style = (s < 0 || s > 2) ? 1 : s;
        Log.i(TAG, "DTS:X 风格切换 -> " + style + " (" + styleName(style) + ")");
        if (eq != null && dtsSession > 0) applyProfile();
    }

    static String styleName(int s) { return s == 2 ? "外放" : (s == 1 ? "影院环绕" : "标准"); }

    /** 开: 在该 session(JAMU 捕获输出 track)上叠 DTS 风格 DSP。幂等。 */
    public static synchronized void applyDts(int sessionId) {
        if (sessionId <= 0) {
            Log.i(TAG, "applyDts: 无效 session=" + sessionId + " 跳过");
            return;
        }
        if (eq != null && dtsSession == sessionId) {
            applyProfile();
            return;
        }
        releaseInternal();
        dtsSession = sessionId;
        try {
            eq = newObj("android.media.audiofx.Equalizer", 0, 0, sessionId);
            if (eq != null) eq.getClass().getMethod("setEnabled", boolean.class).invoke(eq, true);
            virt = newObj("android.media.audiofx.Virtualizer", 0, 0, sessionId);
            if (virt != null) virt.getClass().getMethod("setEnabled", boolean.class).invoke(virt, true);
            loud = newLoudnessEnhancer(sessionId);
            if (loud != null) loud.getClass().getMethod("setEnabled", boolean.class).invoke(loud, true);
            applyProfile();
            Log.i(TAG, "DTS 全局 DSP on session " + sessionId + " style=" + style
                    + " eq=" + (eq != null) + " virt=" + (virt != null) + " loud=" + (loud != null));
        } catch (Throwable t) {
            Log.e(TAG, "DTS 全局 DSP 挂到 session " + sessionId + " 失败: " + t);
            releaseInternal();
            dtsSession = -1;
        }
    }

    /** 按当前 style 套 3 套真不同 profile(环绕强度/响度/EQ). */
    private static void applyProfile() {
        // style: 0 标准, 1 影院环绕, 2 外放
        int virtStrength, loudTarget;
        if (style == 2) { virtStrength = 15000; loudTarget = 1150; }        // 外放: 窄环绕 + 略亮
        else if (style == 1) { virtStrength = 50000; loudTarget = 1250; }   // 影院: 宽环绕 + 更响
        else { virtStrength = 30000; loudTarget = 1050; }                   // 标准
        try {
            if (virt != null)
                virt.getClass().getMethod("setStrength", short.class).invoke(virt, (short) virtStrength);
        } catch (Throwable ignored) {}
        try {
            if (loud != null)
                loud.getClass().getMethod("setTargetLoudness", int.class).invoke(loud, loudTarget);
        } catch (Throwable ignored) {}
        applyEq(style);
    }

    /** EQ 曲线按风格: 影院=低频+6/高频+5; 外放=高频+7(亮, 适配外放扬声器); 标准=平.
     *  getBandFrequencies 缺失时退回按 10 段标准频率设, 保证真套上. */
    private static void applyEq(int st) {
        if (eq == null) return;
        int[] bands;
        try {
            bands = (int[]) eq.getClass().getMethod("getBandFrequencies").invoke(eq);
        } catch (Throwable t) {
            bands = new int[]{ 31500, 63000, 125000, 250000, 500000, 1000000, 2000000, 4000000, 8000000, 16000000 };
        }
        int n = bands.length;
        Method sbl;
        try { sbl = eq.getClass().getMethod("setBandLevel", short.class, short.class); }
        catch (Throwable t) { Log.e(TAG, "setBandLevel 缺失: " + t); return; }
        for (int i = 0; i < n; i++) {
            float khz = (bands[i] / 1000f) / 1000f; // 假设标准 100*1000 编码; 已是 Hz 则 /1000
            // 兼容: 若值 > 1000 视为 100Hz 单位
            float freq = bands[i] > 1000 ? bands[i] / 1000f : bands[i];
            if (freq > 100f) freq = freq / 1000f; // 归一化到 kHz 近似
            int db;
            if (st == 1) db = (freq < 1 ? 6 : freq < 100 ? 0 : 5) * 100;   // 影院: 低频+6 高频+5
            else if (st == 2) db = (freq < 1 ? -2 : freq < 100 ? 0 : 7) * 100; // 外放: 高频+7 略收低音
            else db = 0;                                                         // 标准: 平
            try { sbl.invoke(eq, (short) i, (short) db); } catch (Throwable ignored) {}
        }
        Log.i(TAG, "DTS EQ style=" + st + " bands=" + n + " 已套");
    }

    /** 关: 释放。 */
    public static synchronized void releaseDts() {
        releaseInternal();
        dtsSession = -1;
        Log.i(TAG, "DTS 全局 DSP released");
    }

    /** DTS 影院味均衡曲线: 低频+6 / 中低+4 / 中频0 / 高频+6 (dB)。单位 1/100 dB。反射调用以绕开旧桩签名。 */
    private static void applyPreset() {
        if (eq == null) return;
        try {
            int[] bands = (int[]) eq.getClass().getMethod("getBandFrequencies").invoke(eq);
            int n = bands.length;
            Method sbl = eq.getClass().getMethod("setBandLevel", short.class, short.class);
            for (int i = 0; i < n; i++) {
                float f = bands[i] / 1000f; // kHz
                int db;
                if (f < 1.0f) db = 6;
                else if (f < 3.0f) db = 4;
                else if (f < 8.0f) db = 0;
                else db = 6;
                sbl.invoke(eq, (short) i, (short) (db * 100));
            }
            Log.i(TAG, "DTS EQ 预设应用 bands=" + n);
        } catch (Throwable t) {
            Log.e(TAG, "DTS EQ 预设失败: " + t);
        }
    }

    /** 反射构造 audiofx 对象: 优先 3 参 (client, device, session), 回退 2 参。 */
    private static Object newObj(String cn, int client, int device, int session) {
        try {
            Class<?> c = Class.forName(cn);
            try {
                Constructor<?> cc = c.getConstructor(int.class, int.class, int.class);
                return cc.newInstance(client, device, session);
            } catch (NoSuchMethodException ignored) {
                Constructor<?> cc = c.getConstructor(int.class, int.class);
                return cc.newInstance(client, device);
            }
        } catch (Throwable t) {
            Log.e(TAG, "newObj " + cn + " 失败: " + t);
            return null;
        }
    }

    private static Object newLoudnessEnhancer(int session) {
        try {
            Class<?> c = Class.forName("android.media.audiofx.LoudnessEnhancer");
            try {
                Constructor<?> cc = c.getConstructor(int.class);
                return cc.newInstance(session);
            } catch (NoSuchMethodException ignored) {
                return null;
            }
        } catch (Throwable t) {
            Log.e(TAG, "LoudnessEnhancer 失败: " + t);
            return null;
        }
    }

    private static void releaseInternal() {
        release(eq); eq = null;
        release(virt); virt = null;
        release(loud); loud = null;
    }

    private static void release(Object o) {
        if (o == null) return;
        try { o.getClass().getMethod("release").invoke(o); } catch (Throwable ignored) {}
    }

    /** 反射出本机 IPermissionManager.grantRuntimePermission 的真实签名(验证 Android 15 兼容)。 */
    public static void probe(Context ctx) {
        try {
            Object pm = Class.forName("android.os.ServiceManager")
                    .getMethod("getService", String.class).invoke(null, "permissionmgr");
            boolean has3 = false, has4 = false;
            StringBuilder sb = new StringBuilder();
            for (java.lang.reflect.Method m : pm.getClass().getMethods()) {
                if (m.getName().contains("grant") || m.getName().contains("Grant")) {
                    int c = m.getParameterCount();
                    sb.append(m.getName()).append("(").append(c).append("arg) ");
                    if (m.getName().equals("grantRuntimePermission")) {
                        if (c == 3) has3 = true;
                        if (c == 4) has4 = true;
                    }
                }
            }
            Log.i(TAG, "probe IPermissionManager grant*: " + sb);
            Log.i(TAG, "probe grantRuntimePermission has3=" + has3 + " has4=" + has4);
        } catch (Throwable t) {
            Log.e(TAG, "probe 失败: " + t);
        }
    }
}
