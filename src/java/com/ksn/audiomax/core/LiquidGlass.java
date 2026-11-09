package com.ksn.audiomax.core;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.RenderEffect;
import android.graphics.RuntimeShader;
import android.graphics.Shader;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

/**
 * 实时液态玻璃 —— 复刻 Kyant0/AndroidLiquidGlass (Apache-2.0) 的实时渲染效果:
 *   背景层做【圆角 SDF 折射(色散) + 轻磨砂 + vibrancy 艳度提升】GPU RenderEffect,
 *   前景卡片做成【全透明玻璃 + 1px 浅边 + 顶部高光】, 文字保持清晰(黑).
 *   玻璃面板是透明的, 直接透出被实时折射弯折的背景风景 —— 和 demo 一致(不是白膜)。
 */
public final class LiquidGlass {
    private LiquidGlass() {}
    private static final String TAG = "KsnDtsJAMU";
    private static final int BG_ID = 0x0D15A1;  // 背景玻璃层 view id

    private static final String ROUNDED_RECT_SDF =
            "float radiusAt(float2 coord, float4 radii) {\n" +
            "    if (coord.x >= 0.0) {\n" +
            "        if (coord.y <= 0.0) return radii.y;\n" +
            "        else return radii.z;\n" +
            "    } else {\n" +
            "        if (coord.y <= 0.0) return radii.x;\n" +
            "        else return radii.w;\n" +
            "    }\n" +
            "}\n" +
            "float sdRoundedRect(float2 coord, float2 halfSize, float radius) {\n" +
            "    float2 cornerCoord = abs(coord) - (halfSize - float2(radius));\n" +
            "    float outside = length(max(cornerCoord, 0.0)) - radius;\n" +
            "    float inside = min(max(cornerCoord.x, cornerCoord.y), 0.0);\n" +
            "    return outside + inside;\n" +
            "}\n" +
            "float2 gradSdRoundedRect(float2 coord, float2 halfSize, float radius) {\n" +
            "    float2 cornerCoord = abs(coord) - (halfSize - float2(radius));\n" +
            "    if (cornerCoord.x >= 0.0 || cornerCoord.y >= 0.0) {\n" +
            "        return sign(coord) * normalize(max(cornerCoord, 0.0));\n" +
            "    } else {\n" +
            "        float gradX = step(cornerCoord.y, cornerCoord.x);\n" +
            "        return sign(coord) * float2(gradX, 1.0 - gradX);\n" +
            "    }\n" +
            "}\n";

    // 库 effects/Lens.kt 的折射 shader(色散版), 逐字移植
    private static final String REFRACTION_SHADER =
            "uniform shader content;\n" +
            "uniform float2 size;\n" +
            "uniform float2 offset;\n" +
            "uniform float4 cornerRadii;\n" +
            "uniform float refractionHeight;\n" +
            "uniform float refractionAmount;\n" +
            "uniform float depthEffect;\n" +
            "uniform float chromaticAberration;\n" +
            ROUNDED_RECT_SDF +
            "float circleMap(float x) {\n" +
            "    return 1.0 - sqrt(1.0 - x * x);\n" +
            "}\n" +
            "half4 main(float2 coord) {\n" +
            "    float2 halfSize = size * 0.5;\n" +
            "    float2 centeredCoord = (coord + offset) - halfSize;\n" +
            "    float radius = radiusAt(coord, cornerRadii);\n" +
            "    float sd = sdRoundedRect(centeredCoord, halfSize, radius);\n" +
            "    if (-sd >= refractionHeight) {\n" +
            "        return content.eval(coord);\n" +
            "    }\n" +
            "    sd = min(sd, 0.0);\n" +
            "    float d = circleMap(1.0 - -sd / refractionHeight) * refractionAmount;\n" +
            "    float gradRadius = min(radius * 1.5, min(halfSize.x, halfSize.y));\n" +
            "    float2 grad = normalize(gradSdRoundedRect(centeredCoord, halfSize, gradRadius) + depthEffect * normalize(centeredCoord));\n" +
            "    float2 refractedCoord = coord + d * grad;\n" +
            "    float dispersionIntensity = chromaticAberration * ((centeredCoord.x * centeredCoord.y) / (halfSize.x * halfSize.y));\n" +
            "    float2 dispersedCoord = d * grad * dispersionIntensity;\n" +
            "    half4 color = half4(0.0);\n" +
            "    half4 red = content.eval(refractedCoord + dispersedCoord);\n" +
            "    color.r += red.r / 3.5;\n" +
            "    color.a += red.a / 7.0;\n" +
            "    half4 green = content.eval(refractedCoord);\n" +
            "    color.g += green.g / 3.5;\n" +
            "    color.a += green.a / 7.0;\n" +
            "    half4 blue = content.eval(refractedCoord - dispersedCoord);\n" +
            "    color.b += blue.b / 3.0;\n" +
            "    color.a += blue.a / 7.0;\n" +
            "    return color;\n" +
            "}\n";

    // 库 effects/ColorFilter.kt 的 vibrancy (饱和 1.5x) 色彩矩阵, 逐字移植
    private static final float[] VIBRANCY_MATRIX = {
            1.3148f, -0.286f, -0.0288f, 0f, 0f,
            -0.0852f, 1.114f, -0.0288f, 0f, 0f,
            -0.0852f, -0.286f, 1.3712f, 0f, 0f,
            0f, 0f, 0f, 1f, 0f,
    };

    public static void applyToActivity(Activity a) {
        if (a == null || Build.VERSION.SDK_INT < 33) return;
        ViewGroup root = (ViewGroup) a.getWindow().getDecorView();
        root.post(new Runnable() {
            public void run() {
                try {
                    setupBackgroundGlass(a, root);
                    walkCards(root);
                    walkText(root);
                } catch (Throwable ignored) {}
            }
        });
        root.postDelayed(new Runnable() {
            public void run() {
                try {
                    setupBackgroundGlass(a, root);
                    walkCards(root);
                    walkText(root);
                } catch (Throwable ignored) {}
            }
        }, 500);
    }

    /** 全 App 统一白字: 递归把每个 TextView 染白(主文字纯白, hint/次级半透明白), 覆盖布局写死的黑字. */
    private static void walkText(View v) {
        if (v instanceof TextView) {
            TextView t = (TextView) v;
            t.setTextColor(0xF5FFFFFF);
            try { t.setHintTextColor(0xB3FFFFFF); } catch (Throwable ignored) {}
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) walkText(g.getChildAt(i));
        }
    }

    /** 背景层: 铺满风景, 套【折射+色散+磨砂+vibrancy】实时 RenderEffect. 背景被液态弯折. */
    private static void setupBackgroundGlass(Activity a, ViewGroup root) {
        for (int i = 0; i < root.getChildCount(); i++) {
            if (root.getChildAt(i).getId() == BG_ID) break;
        }
        boolean exists = false;
        for (int i = 0; i < root.getChildCount(); i++) {
            if (root.getChildAt(i).getId() == BG_ID) { exists = true; break; }
        }
        if (exists) {
            // 已存在, 仅刷新效果
            for (int i = 0; i < root.getChildCount(); i++) {
                if (root.getChildAt(i).getId() == BG_ID) { applyToBackground(root.getChildAt(i)); return; }
            }
            return;
        }
        try {
            android.graphics.drawable.Drawable scenery =
                    a.getResources().getDrawable(a.getResources().getIdentifier(
                            "bg_scenery", "drawable", a.getPackageName()));
            if (scenery == null) scenery = root.getBackground();
            final View bg = new View(a);
            bg.setId(BG_ID);
            if (scenery != null) bg.setBackground(scenery);
            else bg.setBackgroundColor(0xFF20243A);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
            root.addView(bg, 0, lp);   // 插到最底层
            bg.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                @Override public void onLayoutChange(View v, int l, int t, int r, int b,
                        int ol, int ot, int or, int ob) {
                    try { applyToBackground(bg); } catch (Throwable ignored) {}
                }
            });
            applyToBackground(bg);
            // 主题 windowBackground(风景)不再重复画, 避免双层
            try { a.getWindow().setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0xFF1B2033)); } catch (Throwable ignored) {}
            Log.i(TAG, "LiquidGlass: 背景层已应用实时 RenderEffect(折射+色散+磨砂+vibrancy)");
        } catch (Throwable t) {
            Log.w(TAG, "LiquidGlass 背景层失败: " + t);
        }
    }

    /** 背景: 圆角 SDF 折射(色散) 叠加 轻磨砂 叠加 vibrancy. GPU 逐帧实时. */
    private static void applyToBackground(View v) {
        if (v.getWidth() == 0 || v.getHeight() == 0) return;
        try {
            float w = v.getWidth(), h = v.getHeight();
            float refractionHeight = 130f;   // 折射边带宽(放大, 弯折清晰)
            float refractionAmount = 56f;    // 折射弯折强度
            RuntimeShader rs = new RuntimeShader(REFRACTION_SHADER);
            rs.setFloatUniform("size", w, h);
            rs.setFloatUniform("offset", 0f, 0f);
            rs.setFloatUniform("cornerRadii", 0f, 0f, 0f, 0f);
            rs.setFloatUniform("refractionHeight", refractionHeight);
            rs.setFloatUniform("refractionAmount", refractionAmount);
            rs.setFloatUniform("depthEffect", 0f);
            rs.setFloatUniform("chromaticAberration", 1f);
            RenderEffect refract = RenderEffect.createRuntimeShaderEffect(rs, "content");
            // 磨砂(轻) → 折射弯折 → vibrancy(艳度), 玻璃感
            RenderEffect blurred = RenderEffect.createBlurEffect(2.2f, 2.2f, Shader.TileMode.CLAMP);
            RenderEffect chain = RenderEffect.createChainEffect(refract, blurred);
            RenderEffect fx = RenderEffect.createColorFilterEffect(
                    new ColorMatrixColorFilter(VIBRANCY_MATRIX), chain);
            v.setRenderEffect(fx);
        } catch (Throwable t) {
            Log.w(TAG, "LiquidGlass 背景 RenderEffect 失败: " + t);
        }
    }

    /** 卡片/按钮/开关 → 全透明玻璃 + 1px 浅边 + 顶部高光. 文字不动(保持清晰). */
    private static void walkCards(View v) {
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) walkCards(g.getChildAt(i));
        }
        if (isGlassTarget(v)) applyGlassChrome(v);
    }

    private static boolean isGlassTarget(View v) {
        if (v.getWidth() <= 0 || v.getHeight() <= 0) return false;
        String cn = v.getClass().getSimpleName();
        boolean target = cn.contains("CardView") || cn.contains("MaterialCardView")
                || cn.contains("MaterialSwitch") || cn.contains("Button");
        if (!target) return false;
        // 排除整屏根容器(避免全屏镀玻璃)
        if (v.getWidth() > 1100 && v.getHeight() > 1900) return false;
        return true;
    }

    private static void applyGlassChrome(View v) {
        try {
            float r = 24f * v.getResources().getDisplayMetrics().density;
            float[] cr = new float[8];
            for (int i = 0; i < 8; i++) cr[i] = r;
            GradientDrawable gd = new GradientDrawable();
            gd.setShape(GradientDrawable.RECTANGLE);
            gd.setCornerRadii(cr);
            gd.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            // 填充: 顶部一道高光(玻璃反光), 往下全透明 → 通透
            gd.setColors(new int[] { 0x2EFFFFFF, 0x0CFFFFFF, 0x00FFFFFF, 0x00FFFFFF });
            gd.setStroke(Math.max(1, (int) (v.getResources().getDisplayMetrics().density * 1f)), 0x46FFFFFF);
            v.setForeground(gd);
            if (v instanceof FrameLayout) {
                // MaterialCardView: 卡片本体底色全透明 + 去投影, 背景直接透出(消掉中间那个长方形)
                try {
                    java.lang.reflect.Method m = v.getClass().getMethod("setCardBackgroundColor", int.class);
                    m.invoke(v, Color.TRANSPARENT);
                    java.lang.reflect.Method e = v.getClass().getMethod("setCardElevation", float.class);
                    e.invoke(v, 0f);
                } catch (Throwable ignored) {
                    v.setBackgroundColor(Color.TRANSPARENT);
                }
            }
            Log.i(TAG, "LiquidGlass: " + v.getClass().getSimpleName() + " 已做成透明玻璃(浅边+高光+透背景)");
        } catch (Throwable t) {
            Log.w(TAG, "LiquidGlass chrome 失败 " + v.getClass().getSimpleName() + ": " + t);
        }
    }
}
