package com.ksn.audiomax.core;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.RenderEffect;
import android.graphics.RuntimeShader;
import android.graphics.Shader;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

/**
 * 实时液态玻璃 —— 复刻 Kyant0/AndroidLiquidGlass 的底层折射逻辑(SdfShader.kt):
 *   背景(海洋)在【每张卡片的圆角 SDF 边缘】被 GPU 实时强弯折(refraction) + bevel 高光,
 *   卡片本身近全透明, 只有强边缘折射+高光, 文字高亮白+深阴影(高对比)。
 *   折射参数 refractionHeight/refractionAmount/bevelStrength/lightAngle 全部可自调。
 */
public final class LiquidGlass {
    private LiquidGlass() {}
    private static final String TAG = "KsnDtsJAMU";
    private static final int BG_ID = 0x0D15A1;

    // ================= 可自调的折射参数(对应仓库 Lens/SdfShader) =================
    private static final float CORNER          = 22f;   // 卡片圆角(dp)
    private static final float REFRACTION_HEIGHT = 16f; // 折射 rim 带宽(dp, 只在卡片圆角边缘一圈)
    private static final float REFRACTION_AMOUNT   = 150f; // 折射弯折强度(px, 边缘 rim 最强 → 强烈边缘折射)
    private static final float BEVEL_STRENGTH      = 1.5f; // 边缘 bevel 高光强度(玻璃透镜亮边)
    private static final float LIGHT_ANGLE         = 45f;  // 光源角度(度), 决定高光在哪一侧
    private static final int    MAX_CARDS           = 16;  // 最多同时折射的卡片数
    // ============================================================================

    // 折射 shader: content=背景(海洋), 沿每张卡片圆角 SDF 边缘法线弯折 + bevel 高光.
    // 复刻仓库 SdfShader.kt 的 circleMap/gradSdRoundedRect 折射逻辑, 参数化.
    private static final String REFRACTION_SHADER =
            "uniform shader content;\n" +
            "uniform float cards[" + (MAX_CARDS * 4) + "];\n" +
            "uniform int count;\n" +
            "uniform float corner;\n" +
            "uniform float refractionHeight;\n" +
            "uniform float refractionAmount;\n" +
            "uniform float bevelStrength;\n" +
            "uniform float lightAngle;\n" +
            "float2 gradSdRoundedRect(float2 p, float2 c, float2 hs, float r) {\n" +
            "    float2 q = abs(p - c) - hs + float2(r);\n" +
            "    if (q.x >= 0.0 || q.y >= 0.0) {\n" +
            "        return sign(p - c) * normalize(max(q, 0.0));\n" +
            "    } else {\n" +
            "        float gx = step(q.y, q.x);\n" +
            "        return sign(p - c) * float2(gx, 1.0 - gx);\n" +
            "    }\n" +
            "}\n" +
            "float sdRoundedRect(float2 p, float2 c, float2 hs, float r) {\n" +
            "    float2 q = abs(p - c) - hs + float2(r);\n" +
            "    return length(max(q, 0.0)) + min(max(q.x, q.y), 0.0) - r;\n" +
            "}\n" +
            "float circleMap(float x) { return 1.0 - sqrt(max(0.0, 1.0 - x * x)); }\n" +
            "half4 main(float2 coord) {\n" +
            "    float2 bend = float2(0.0);\n" +
            "    float bevel = 0.0;\n" +
            "    float2 ld = float2(cos(lightAngle * 3.14159 / 180.0), sin(lightAngle * 3.14159 / 180.0));\n" +
            "    for (int i = 0; i < " + MAX_CARDS + "; i++) {\n" +
            "        if (i >= count) break;\n" +
            "        float4 cr = float4(cards[i*4], cards[i*4+1], cards[i*4+2], cards[i*4+3]);\n" +
            "        float2 c = cr.xy;\n" +
            "        float2 hs = cr.zw * 0.5;\n" +
            "        float sd = sdRoundedRect(coord, c, hs, corner);\n" +
            "        float2 n = gradSdRoundedRect(coord, c, hs, corner);\n" +
            "        // 折射影响: 离卡片边缘越近越强, 高斯衰减到 refractionHeight\n" +
            "        float inf = exp(-abs(sd) / refractionHeight);\n" +
            "        // 越靠卡片内部(sd<0), 弯折越大(厚玻璃镜头感, 复刻 circleMap)\n" +
            "        float t = clamp(-sd, 0.0, refractionHeight) / refractionHeight;\n" +
            "        float profile = circleMap(1.0 - t);\n" +
            "        float2 b = n * inf * refractionAmount * (0.4 + 0.6 * profile);\n" +
            "        bend += b;\n" +
            "        // bevel: 边缘法线朝光源的一侧高亮\n" +
            "        bevel = max(bevel, clamp(dot(n, ld), 0.0, 1.0) * inf);\n" +
            "    }\n" +
            "    half4 color = content.eval(coord - bend);\n" +
            "    color.rgb *= 1.0 + bevelStrength * bevel;\n" +
            "    return color;\n" +
            "}\n";

    private static Handler sHandler;
    private static Runnable sUpdater;
    private static RuntimeShader sShader;   // 复用(只更新 cards 均匀量)
    private static RenderEffect sEffect;
    private static int sTextColor = 0xF5FFFFFF;   // 默认白; 按背景亮度自适应(亮背景→黑字)

    /** 采样背景 drawable 的平均亮度, 决定文字用黑还是白. 亮背景(<阈值)→黑字, 暗→白字. */
    private static void computeTextColor(Activity a, android.graphics.drawable.Drawable d) {
        try {
            android.graphics.Bitmap bm = null;
            if (d instanceof android.graphics.drawable.BitmapDrawable) {
                bm = ((android.graphics.drawable.BitmapDrawable) d).getBitmap();
            }
            if (bm == null) {
                int id = a.getResources().getIdentifier("bg_scenery", "drawable", a.getPackageName());
                android.graphics.BitmapFactory.Options o = new android.graphics.BitmapFactory.Options();
                o.inSampleSize = 8;
                bm = android.graphics.BitmapFactory.decodeResource(a.getResources(), id, o);
            }
            if (bm == null) return;
            int n = 0, sum = 0;
            for (int y = 0; y < bm.getHeight(); y += Math.max(1, bm.getHeight() / 20)) {
                for (int x = 0; x < bm.getWidth(); x += Math.max(1, bm.getWidth() / 20)) {
                    int p = bm.getPixel(x, y);
                    int lum = (int) (0.299 * Color.red(p) + 0.587 * Color.green(p) + 0.114 * Color.blue(p));
                    sum += lum; n++;
                }
            }
            int avg = n == 0 ? 0 : sum / n;
            // 卡片是近全透玻璃垫在背景上, 文字实际坐在"玻璃面板表面"上 → 按有效表面亮度判
            int effLum = (avg * 90 + 255 * 10) / 100;
            sTextColor = (effLum < 140) ? 0xFFFFFFFF : 0xE6000000;   // 亮面板→黑字, 暗面板→白字
            Log.i(TAG, "LiquidGlass 背景亮度=" + avg + " 表面=" + effLum + " → 文字=" + (effLum < 140 ? "白" : "黑"));
        } catch (Throwable t) {
            Log.w(TAG, "computeTextColor 失败, 用默认白: " + t);
        }
    }

    public static void applyToActivity(Activity a) {
        if (a == null || Build.VERSION.SDK_INT < 33) return;
        ViewGroup root = (ViewGroup) a.getWindow().getDecorView();
        root.post(new Runnable() {
            public void run() {
                try {
                    setupBackgroundGlass(a, root);
                    collectAndApply(root, bgViewOf(root));
                    makeTextWhite(root);
                    startUpdater(root, bgViewOf(root));
                } catch (Throwable ignored) {}
            }
        });
    }

    private static View bgViewOf(ViewGroup root) {
        for (int i = 0; i < root.getChildCount(); i++) {
            View c = root.getChildAt(i);
            if (c.getId() == BG_ID) return c;
        }
        return null;
    }

    /** 在 DecorView 最底层插一个铺满海洋的背景 View, 套【按卡片边缘强折射】的实时 RenderEffect. */
    private static void setupBackgroundGlass(Activity a, ViewGroup root) {
        for (int i = 0; i < root.getChildCount(); i++) if (root.getChildAt(i).getId() == BG_ID) return;
        try {
            android.graphics.drawable.Drawable ocean =
                    a.getResources().getDrawable(a.getResources().getIdentifier(
                            "bg_scenery", "drawable", a.getPackageName()));
            computeTextColor(a, ocean);
            final View bg = new View(a);
            bg.setId(BG_ID);
            if (ocean != null) bg.setBackground(ocean);
            else bg.setBackgroundColor(0xFF1A4E86);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
            root.addView(bg, 0, lp);
            bg.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                @Override public void onLayoutChange(View v, int l, int t, int r, int b,
                        int ol, int ot, int or, int ob) {
                    try { collectAndApply(((ViewGroup) v.getParent()), bg); } catch (Throwable ignored) {}
                }
            });
            // 让主题 windowBackground(海洋)不再重复画, 避免双层
            try { a.getWindow().setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0xFF1A4E86)); } catch (Throwable ignored) {}
            Log.i(TAG, "LiquidGlass: 海洋背景层已应用【按卡片边缘强折射】实时 RenderEffect (amount=" + REFRACTION_AMOUNT + " rim=" + REFRACTION_HEIGHT + " bevel=" + BEVEL_STRENGTH + ")");
        } catch (Throwable t) {
            Log.w(TAG, "LiquidGlass 背景层失败: " + t);
        }
    }

    /** 收集玻璃卡片(MaterialCardView)的窗口坐标 → 更新背景折射 shader 的 cards 数组.
     *  复用同一个 RuntimeShader(只更新 cards/count 均匀量), 折射 GPU 每帧实时重算 → 滚动时 rim 跟着卡片走. */
    private static void collectAndApply(ViewGroup root, View bg) {
        if (bg == null || bg.getWidth() == 0) return;
        try {
            if (sShader == null) {
                sShader = new RuntimeShader(REFRACTION_SHADER);
                float density = bg.getResources().getDisplayMetrics().density;
                sShader.setFloatUniform("corner", CORNER * density);
                sShader.setFloatUniform("refractionHeight", REFRACTION_HEIGHT * density);
                sShader.setFloatUniform("refractionAmount", REFRACTION_AMOUNT * density);
                sShader.setFloatUniform("bevelStrength", BEVEL_STRENGTH);
                sShader.setFloatUniform("lightAngle", LIGHT_ANGLE);
            }
            float[] cards = new float[MAX_CARDS * 4];
            int[] cnt = {0};
            collectCards(root, cards, cnt);
            int n = Math.min(cnt[0], MAX_CARDS);
            sShader.setIntUniform("count", n);
            sShader.setFloatUniform("cards", cards);   // 只更新 cards 均匀量, 其余保持
            if (sEffect == null) sEffect = RenderEffect.createRuntimeShaderEffect(sShader, "content");
            bg.setRenderEffect(sEffect);
        } catch (Throwable t) {
            Log.w(TAG, "LiquidGlass 折射应用失败: " + t);
        }
    }

    private static float[] trimTo(float[] a, int n) {
        float[] r = new float[n * 4];
        if (n > 0) System.arraycopy(a, 0, r, 0, n * 4);
        return r;
    }

    /** 递归收集 MaterialCardView 的窗口坐标 (x,y,w,h), 并给它们套极淡玻璃镀铬(让折射当主角). */
    private static void collectCards(View v, float[] cards, int[] cnt) {
        if (v.getClass().getSimpleName().contains("CardView")) {
            if (v.getWidth() > 40 && v.getHeight() > 24
                    && !(v.getWidth() > 1100 && v.getHeight() > 1900)) {
                applyGlassChrome(v);
                int n = cnt[0];
                if (n < MAX_CARDS) {
                    int[] loc = new int[2];
                    v.getLocationInWindow(loc);
                    cards[n * 4] = loc[0];
                    cards[n * 4 + 1] = loc[1];
                    cards[n * 4 + 2] = v.getWidth();
                    cards[n * 4 + 3] = v.getHeight();
                    cnt[0] = n + 1;
                }
            }
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) collectCards(g.getChildAt(i), cards, cnt);
        }
    }

    /** 给卡片套极淡玻璃镀铬: 1px 淡边(只勾勒卡片边界), 把视觉舞台让给边缘折射. 幂等. */
    private static void applyGlassChrome(View v) {
        try {
            if (Boolean.TRUE.equals(v.getTag())) return;
            android.graphics.drawable.GradientDrawable gd = new android.graphics.drawable.GradientDrawable();
            gd.setShape(android.graphics.drawable.GradientDrawable.RECTANGLE);
            float r = 20f * v.getResources().getDisplayMetrics().density;
            float[] cr = new float[8];
            for (int i = 0; i < 8; i++) cr[i] = r;
            gd.setCornerRadii(cr);
            gd.setOrientation(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM);
            gd.setColors(new int[] { 0x18FFFFFF, 0x0AFFFFFF, 0x00FFFFFF, 0x00FFFFFF }); // 极淡顶部高光→透明(把舞台让给折射)
            gd.setStroke(1, 0x33FFFFFF);   // 1px 淡边(只勾勒卡片边界)
            v.setForeground(gd);
            v.setTag(Boolean.TRUE);
        } catch (Throwable ignored) {}
    }

    /** 让全 App 文字: 高亮白 + 深色阴影描边(高亮度/高对比, 浅深背景都清晰). */
    public static void makeTextWhite(View root) {
        try { walkText(root); } catch (Throwable ignored) {}
    }
    private static void walkText(View v) {
        if (v instanceof TextView) {
            TextView t = (TextView) v;
            t.setTextColor(0xFFFFFFFF);                 // 高亮白
            try { t.setShadowLayer(6f, 0f, 2f, 0xE6000000); } catch (Throwable ignored) {} // 深色阴影 → 高对比
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) walkText(g.getChildAt(i));
        }
    }

    private static void startUpdater(final ViewGroup root, final View bg) {
        if (sUpdater != null) return;
        sHandler = new Handler(Looper.getMainLooper());
        sUpdater = new Runnable() {
            public void run() {
                try {
                    collectAndApply(root, bg);
                    makeTextWhite(root);
                } catch (Throwable ignored) {}
                sHandler.postDelayed(this, 120);
            }
        };
        sHandler.postDelayed(sUpdater, 120);
    }
}
