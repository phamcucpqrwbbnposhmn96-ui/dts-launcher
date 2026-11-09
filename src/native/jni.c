/* libksndtsreal.so — 真 DTS 比特流引擎 (dcaenc 编码 + dcadec 解码) 的 JNI 桥.
 * 让 JAMU 捕获到的其它 app 音频, 走一条真 DTS 编码→解码往返再出声.
 *
 * Java: com.ksn.audiomax.core.DtsReal
 */
#include <jni.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <dlfcn.h>
#include <android/log.h>
#define KSNDTS_TAG "KsnDtsReal"
#define KSNDTS_LOGI(...) __android_log_print(ANDROID_LOG_INFO, KSNDTS_TAG, __VA_ARGS__)

#include "dcaenc.h"
#include "dca_context.h"
#include "dca_stream.h"

/* ---- 编码器 ---- */
JNIEXPORT jlong JNICALL
Java_com_ksn_audiomax_core_DtsReal_encCreate(JNIEnv *env, jclass c,
                                              jint sampleRate, jint channels, jint bitrate) {
    (void)c;
    int chcfg;
    switch (channels) {
        case 1:  chcfg = DCAENC_CHANNELS_MONO; break;
        case 2:  chcfg = DCAENC_CHANNELS_STEREO; break;
        case 3:  chcfg = DCAENC_CHANNELS_3FRONT; break;
        case 5:
        case 6:  chcfg = DCAENC_CHANNELS_2FRONT_2REAR; break;
        case 7:  chcfg = DCAENC_CHANNELS_3FRONT_2REAR_1OV; break;
        default: chcfg = DCAENC_CHANNELS_STEREO; break;
    }
    /* 始终大端输出, 与 dcadec 期望一致 */
    dcaenc_context e = dcaenc_create(sampleRate, chcfg, bitrate, DCAENC_FLAG_BIGENDIAN);
    return (jlong)(intptr_t)e;
}

JNIEXPORT jint JNICALL
Java_com_ksn_audiomax_core_DtsReal_encInputSize(JNIEnv *env, jclass c, jlong h) {
    (void)env; (void)c;
    dcaenc_context e = (dcaenc_context)(intptr_t)h;
    return e ? dcaenc_input_size(e) : 0;
}

/* inS32: 每个声道 inS32.length/channels 个 int32 样本; out: 容量 >= encOutputSize. 返回写出字节数. */
JNIEXPORT jint JNICALL
Java_com_ksn_audiomax_core_DtsReal_encConvert(JNIEnv *env, jclass c, jlong h,
                                               jintArray inS32, jbyteArray out) {
    (void)c;
    dcaenc_context e = (dcaenc_context)(intptr_t)h;
    if (!e || !inS32 || !out) return -1;
    jsize inLen = (*env)->GetArrayLength(env, inS32);
    if (inLen <= 0) return 0;
    int32_t *in = (int32_t *)(*env)->GetIntArrayElements(env, inS32, 0);
    jbyte *ob = (*env)->GetByteArrayElements(env, out, 0);
    if (!in || !ob) {
        if (in) (*env)->ReleaseIntArrayElements(env, inS32, in, 0);
        if (ob) (*env)->ReleaseByteArrayElements(env, out, ob, 0);
        return -1;
    }
    int written = dcaenc_convert_s32(e, in, ob);
    (*env)->ReleaseIntArrayElements(env, inS32, in, 0);
    (*env)->ReleaseByteArrayElements(env, out, ob, 0);
    return written;
}

JNIEXPORT jint JNICALL
Java_com_ksn_audiomax_core_DtsReal_encDestroy(JNIEnv *env, jclass c, jlong h, jbyteArray out) {
    (void)c;
    dcaenc_context e = (dcaenc_context)(intptr_t)h;
    if (!e) return 0;
    if (out) {
        jbyte *ob = (*env)->GetByteArrayElements(env, out, 0);
        int n = dcaenc_destroy(e, ob ? ob : NULL);
        if (ob) (*env)->ReleaseByteArrayElements(env, out, ob, 0);
        return n;
    }
    uint8_t dummy[256];
    int n = dcaenc_destroy(e, dummy);
    return n;
}

/* ---- 解码器 ---- */
JNIEXPORT jlong JNICALL
Java_com_ksn_audiomax_core_DtsReal_decCreate(JNIEnv *env, jclass c) {
    (void)env; (void)c;
    struct dcadec_context *d = dcadec_context_create(0);
    return (jlong)(intptr_t)d;
}

/* dts: 一段 DTS 比特流(大端, 需 >= DTS 帧, 内部对齐喂). outPcm: 立体声交织 short 输出.
 * meta: [0]=声道数 [1]=采样率 [2]=profile. 返回解码出的立体声帧数(每帧2个short). */
JNIEXPORT jint JNICALL
Java_com_ksn_audiomax_core_DtsReal_decFilter(JNIEnv *env, jclass c, jlong h,
                                              jbyteArray dts, jint dtsLen,
                                              jshortArray outPcm, jintArray meta) {
    struct dcadec_context *d = (struct dcadec_context *)(intptr_t)h;
    if (!d) return -1;

    int blen = dtsLen;
    /* 拷贝到 16 对齐 + padding buffer (dcadec 要求 4 对齐 + 8 padding) */
    uint8_t *buf = (uint8_t *)malloc(blen + 16);
    if (!buf) return -1;
    jbyte *db = (*env)->GetByteArrayElements(env, dts, 0);
    memcpy(buf, db, blen > 0 ? blen : 0);
    memset(buf + blen, 0, 16);
    if (db) (*env)->ReleaseByteArrayElements(env, dts, db, 0);

    int r = dcadec_context_parse(d, buf, blen);
    if (r < 0) { free(buf); if (meta) (*env)->SetIntArrayRegion(env, meta, 0, (jint[]){-1,-1,-1}, 3); return -1; }

    int **planes = NULL; int ns = 0, cmask = 0, sr = 0, bps = 0, prof = 0;
    r = dcadec_context_filter(d, &planes, &ns, &cmask, &sr, &bps, &prof);
    if (r < 0 || ns == 0 || !planes) {
        free(buf);
        if (meta) { jint m[3] = {0, sr, prof}; (*env)->SetIntArrayRegion(env, meta, 0, m, 3); }
        return 0;
    }
    int ch = 0; for (int m = cmask; m; m &= m - 1) ch++;
    ch = (ch < 2) ? 2 : ch; /* 输出立体声 */
    jshortArray op = outPcm;
    jsize cap = op ? (*env)->GetArrayLength(env, op) : 0;
    jshort *optr = op ? (jshort *)((*env)->GetShortArrayElements(env, op, 0)) : NULL;
    if (!optr) { free(buf); if (meta){jint m[3]={ch,sr,prof};(*env)->SetIntArrayRegion(env,meta,0,m,3);} return 0; }

    for (int i = 0; i < ns && (jsize)((i + 1) * 2) <= cap; i++) {
        int32_t L = planes[0][i] >> 16;
        int32_t R = (ch >= 2 && planes[1]) ? (planes[1][i] >> 16) : L;
        if (L > 32767) L = 32767; if (L < -32768) L = -32768;
        if (R > 32767) R = 32767; if (R < -32768) R = -32768;
        optr[i * 2] = (jshort)L;
        optr[i * 2 + 1] = (jshort)R;
    }
    (*env)->ReleaseShortArrayElements(env, op, optr, 0);
    if (meta) { jint m[3] = {ch, sr, prof}; (*env)->SetIntArrayRegion(env, meta, 0, m, 3); }
    free(buf);
    return ns;
}

JNIEXPORT void JNICALL
Java_com_ksn_audiomax_core_DtsReal_decDestroy(JNIEnv *env, jclass c, jlong h) {
    (void)env; (void)c;
    struct dcadec_context *d = (struct dcadec_context *)(intptr_t)h;
    if (d) dcadec_context_destroy(d);
}

/* ============================================================================
 * 持久状态机: 把任意大小的捕获 PCM 块, 走真 DTS 编码→解码往返, in-place 写回.
 *  内部维护: dcaenc 上下文 + dcadec 上下文 + int32 累加器.
 *  JAMU 捕获循环每块调一次 process(buf, nSamples, meta), buf 被 DTS 往返结果覆盖.
 *  任何失败都不破坏 buf(保留原 PCM), 返回 -1.
 * ==========================================================================*/
#define KS_SR       48000
#define KS_CHANNELS 2
#define KS_BITRATE  1536000

static dcaenc_context g_enc = NULL;
static struct dcadec_context *g_dec = NULL;
static int g_inSize = 0;        /* dcaenc 每次吃多少 s32 样本/声道 */
static int g_outSize = 0;       /* 每次出的 DTS 字节 */
static int32_t *g_acc = NULL;   /* int32 累加器(每声道) */
static int g_accLen = 0;        /* 已累积样本数(每声道) */
static int g_accCap = 0;
static uint8_t *g_dts = NULL;   /* DTS 字节 scratch */
static int32_t *g_decPcm = NULL; /* decFilter 输出 s32 scratch */
static int g_dtsFrames = 0;       /* 已处理真 DTS 帧计数(日志用) */
static float g_outScale = 32768.0f; /* dcadec 满幅输出对应的 s32 峰值(校准后), 用于归一化回 float */

/* DTS:X 风格切换: 0=标准, 1=影院环绕(宽), 2=外放(speaker, 提亮+略收窄) */
static int g_style = 1;
static float styleGain(int s) { return s == 2 ? 1.10f : (s == 1 ? 1.0f : 0.95f); }

/* ---- 真 DTS PARMA upmix 桥(来自 libdtsxreal.so 的 kdn_upmix_float).
 *  影院/外放风格时把轻量 DTS 往返结果再送一遍真·盲上混+下混, 让风格有真区别.
 *  全部失败/缺库都自动回落到纯 DTS 往返(light path), 永不静音/崩溃. ---- */
typedef int (*kdn_upmix_fn_t)(const float*, int, int, float*);
static kdn_upmix_fn_t g_upmix = (kdn_upmix_fn_t)0;
static int g_upmixResolved = 0;
static float *g_upix = NULL, *g_upox = NULL;
static int g_upixCap = 0;
static int g_upmixFails = 0;

static void resolve_upmix(void) {
    if (g_upmixResolved) return;
    g_upmixResolved = 1;
    /* app 的 native lib 用 RTLD_LOCAL 加载, RTLD_DEFAULT 看不到兄弟库符号;
     *  必须显式 dlopen libdtsxreal.so 再在其句柄上 dlsym. */
    void* h = dlopen("libdtsxreal.so", RTLD_NOW);
    if (h) {
        g_upmix = (kdn_upmix_fn_t)dlsym(h, "kdn_upmix_float");
    }
    if (g_upmix) {
        KSNDTS_LOGI("kdn_upmix_float 已解析: 真 PARMA 上混可用 (libdtsxreal.so)");
    } else {
        KSNDTS_LOGI("kdn_upmix_float 未找到(libdtsxreal.so 未加载/dlsym 失败) -> 用纯 DTS 往返");
    }
}
static int upmix_ready(void) {
    resolve_upmix();
    return g_upmix != NULL && g_upmixFails < 4;  /* 连续失败 4 次就停用, 回 light path */
}
static int upmix_buf_ensure(int frames) {
    if (g_upixCap >= frames) return 0;
    g_upixCap = frames;
    g_upix = (float *)realloc(g_upix, sizeof(float) * g_upixCap * 2);
    g_upox = (float *)realloc(g_upox, sizeof(float) * g_upixCap * 2);
    return (g_upix && g_upox) ? 0 : -1;
}

static int ensure_engine(void) {
    if (g_enc && g_dec) return 0;
    g_enc = dcaenc_create(KS_SR, DCAENC_CHANNELS_STEREO, KS_BITRATE, DCAENC_FLAG_BIGENDIAN);
    g_dec = dcadec_context_create(0);
    if (!g_enc || !g_dec) {
        if (g_enc) { dcaenc_destroy(g_enc, NULL); g_enc = NULL; }
        if (g_dec) { dcadec_context_destroy(g_dec); g_dec = NULL; }
        return -1;
    }
    g_inSize = dcaenc_input_size(g_enc);
    g_outSize = dcaenc_output_size(g_enc);
    g_accCap = g_inSize * 64;
    g_acc = (int32_t *)malloc(sizeof(int32_t) * g_accCap * KS_CHANNELS);
    g_decPcm = (int32_t *)malloc(sizeof(int32_t) * 4096 * KS_CHANNELS);
    g_dts = (uint8_t *)malloc(g_outSize + 16);
    g_accLen = 0;
    if (!g_acc || !g_decPcm || !g_dts) return -1;

    /* 校准: 喂满幅方波过一遍真 DTS 编解码, 测 dcadec 输出 s32 峰值 → g_outScale.
     * 这样 float 归一化 fl = L / g_outScale 不再依赖猜测的移位, 任何 dcadec 输出 scale 都对. */
    int32_t *cal = (int32_t *)malloc(sizeof(int32_t) * g_inSize * KS_CHANNELS * 4);
    if (cal) {
        for (int i = 0; i < g_inSize * 4; i++) cal[i * KS_CHANNELS + 0] = 32767 << 16;
        for (int i = 0; i < g_inSize * 4; i++) cal[i * KS_CHANNELS + 1] = 32767 << 16;
        uint8_t cobuf[g_outSize + 16];
        int P = 0;
        for (int off = 0; off < g_inSize * 4; off += g_inSize) {
            int c = dcaenc_convert_s32(g_enc, &cal[off * KS_CHANNELS], cobuf);
            if (c <= 0) continue;
            int **pl = NULL; int nss = 0, cm = 0, sr = 0, bps = 0, pr = 0;
            if (dcadec_context_parse(g_dec, cobuf, c) < 0) continue;
            if (dcadec_context_filter(g_dec, &pl, &nss, &cm, &sr, &bps, &pr) < 0) continue;
            if (!pl) continue;
            for (int k = 0; k < nss; k++)
                for (int chn = 0; chn < KS_CHANNELS; chn++)
                    if (pl[chn]) { int a = pl[chn][k] < 0 ? -pl[chn][k] : pl[chn][k]; if (a > P) P = a; }
        }
        free(cal);
        g_outScale = P > 0 ? (float)P : 32768.0f;
        KSNDTS_LOGI("校准 dcadec 满幅输出 s32 峰值 = %d (float 归一化除数 %.0f)", P, g_outScale);
    }
    return 0;
}

JNIEXPORT void JNICALL
Java_com_ksn_audiomax_core_DtsReal_nativeProcess(JNIEnv *env, jclass c,
                                            jshortArray buf, jint sizeInShorts) {
    (void)c;
    if (!buf) return;
    jsize cap = (*env)->GetArrayLength(env, buf);
    int nSamples = sizeInShorts / KS_CHANNELS;   /* 立体声: frames */
    if (nSamples <= 0 || cap < nSamples * KS_CHANNELS) return;
    if (ensure_engine() < 0) return;

    /* 取捕获 short[], 转 s32, 追加进累加器(每声道) */
    jshort *in = (*env)->GetShortArrayElements(env, buf, 0);
    int32_t *acc = g_acc;
    if (!in || !acc) {
        if (in) (*env)->ReleaseShortArrayElements(env, buf, in, 0);
        return;
    }
    for (int chn = 0; chn < KS_CHANNELS; chn++) {
        for (int i = 0; i < nSamples; i++) {
            int idx = g_accLen + i;
            if (idx >= g_accCap) break;
            acc[idx * KS_CHANNELS + chn] = (int32_t)in[i * KS_CHANNELS + chn] << 16;
        }
    }
    g_accLen += nSamples;

    /* 每攒够 inSize, 编一帧真 DTS, 解回 s32, 转 short in-place 写回 buf */
    int written = 0;
    while (g_accLen >= g_inSize && written + g_inSize <= nSamples) {
    int32_t *fin = acc;              /* 取最旧 inSize 个样本(线性前移) */
        uint8_t obuf[g_outSize + 16];
        int n = dcaenc_convert_s32(g_enc, fin, obuf);
        if (n <= 0) { break; }
        /* 真 DTS 比特流 → dcadec 解回 s32 */
        int **planes = NULL; int ns = 0, cmask = 0, sr = 0, bps = 0, prof = 0;
        int r = dcadec_context_parse(g_dec, obuf, n);
        if (r < 0) { break; }
        r = dcadec_context_filter(g_dec, &planes, &ns, &cmask, &sr, &bps, &prof);
        if (r < 0 || ns <= 0 || !planes) { break; }
        g_dtsFrames++;
        if (g_dtsFrames == 1 || (g_dtsFrames % 200) == 0) {
            KSNDTS_LOGI("真 DTS 往返 #%d: 帧头=%02x %02x %02x %02x  编出 %d 字节 -> 解回 %d 样本 (%dHz profile=%d)",
                        g_dtsFrames, obuf[0], obuf[1], obuf[2], obuf[3], n, ns, sr, prof);
        }

        /* 下混立体声 s32→short, 写回 buf[written..] (按校准值 g_outScale 归一化) */
        for (int i = 0; i < ns && written + i < nSamples; i++) {
            int32_t Lv = planes[0][i];
            int32_t Rv = (KS_CHANNELS >= 2 && planes[1]) ? planes[1][i] : Lv;
            int32_t L = (int32_t)(Lv / g_outScale * 32768.0f);
            int32_t R = (int32_t)(Rv / g_outScale * 32768.0f);
            if (L > 32767) L = 32767; if (L < -32768) L = -32768;
            if (R > 32767) R = 32767; if (R < -32768) R = -32768;
            if (R > 32767) R = 32767; if (R < -32768) R = -32768;
            int o = (written + i) * KS_CHANNELS;
            in[o] = (jshort)L;
            in[o + 1] = (jshort)R;
        }
        written += ns;
        /* 消费掉头部 inSize 个样本(线性前移) */
        int consume = g_inSize;
        int remain = g_accLen - consume;
        if (remain > 0) {
            for (int chn = 0; chn < KS_CHANNELS; chn++)
                for (int i = 0; i < remain; i++)
                    acc[i * KS_CHANNELS + chn] = acc[(i + consume) * KS_CHANNELS + chn];
        }
        g_accLen = remain;
    }
    (*env)->ReleaseShortArrayElements(env, buf, in, 0);
    (void)written;
}

JNIEXPORT void JNICALL
Java_com_ksn_audiomax_core_DtsReal_nativeProcessFloat(JNIEnv *env, jclass c,
                                                    jfloatArray buf, jint sizeInFloats) {
    (void)c;
    if (!buf) return;
    jsize cap = (*env)->GetArrayLength(env, buf);
    int nSamples = sizeInFloats / KS_CHANNELS;   /* 立体声: frames */
    if (nSamples <= 0 || cap < nSamples * KS_CHANNELS) return;
    if (ensure_engine() < 0) return;

    jfloat *in = (*env)->GetFloatArrayElements(env, buf, 0);
    int32_t *acc = g_acc;
    if (!in || !acc) { if (in) (*env)->ReleaseFloatArrayElements(env, buf, in, 0); return; }

    float inPeak = 0.0f;
    /* float [-1,1] -> s32(16 位缩放), 追加进累加器 */
    for (int chn = 0; chn < KS_CHANNELS; chn++)
        for (int i = 0; i < nSamples; i++) {
            int idx = g_accLen + i;
            if (idx >= g_accCap) break;
            float f = in[i * KS_CHANNELS + chn];
            float a = f < 0 ? -f : f;
            if (a > inPeak) inPeak = a;
            int32_t s = (int32_t)(f * 32768.0f);
            if (s > 32767) s = 32767; if (s < -32768) s = -32768;
            acc[idx * KS_CHANNELS + chn] = s << 16;
        }
    g_accLen += nSamples;

    int written = 0;
    while (g_accLen >= g_inSize && written + g_inSize <= nSamples) {
        int32_t *fin = acc;
        uint8_t obuf[g_outSize + 16];
        int n = dcaenc_convert_s32(g_enc, fin, obuf);
        if (n <= 0) break;
        int **planes = NULL; int ns = 0, cmask = 0, sr = 0, bps = 0, prof = 0;
        int r = dcadec_context_parse(g_dec, obuf, n);
        if (r < 0) break;
        r = dcadec_context_filter(g_dec, &planes, &ns, &cmask, &sr, &bps, &prof);
        if (r < 0 || ns <= 0 || !planes) break;
        g_dtsFrames++;
        float outPeak = 0.0f;
        float sg = styleGain(g_style);
        int chunk = ns; if (chunk > nSamples - written) chunk = nSamples - written;
        int useUpmix = 0;
        if (upmix_buf_ensure(chunk) == 0) {
            for (int i = 0; i < chunk; i++) {
                int32_t L = planes[0][i];
                int32_t R = (KS_CHANNELS >= 2 && planes[1]) ? planes[1][i] : L;
                g_upix[i * 2]     = (float)L / g_outScale;
                g_upix[i * 2 + 1] = (float)R / g_outScale;
            }
            /* 影院/外放风格把 DTS 往返结果再送一遍真 PARMA 盲上混+下混; 标准保留纯 DTS. */
            if (g_style != 0 && upmix_ready()) {
                if (g_upmix(g_upix, chunk, g_style, g_upox) == 0) useUpmix = 1;
                else g_upmixFails++;
            }
        }
        for (int i = 0; i < chunk; i++) {
            float fl, fr;
            if (useUpmix) { fl = g_upox[i * 2]; fr = g_upox[i * 2 + 1]; }
            else          { fl = g_upix[i * 2] * sg; fr = g_upix[i * 2 + 1] * sg; }
            if (fl > 1.0f) fl = 1.0f; if (fl < -1.0f) fl = -1.0f;
            if (fr > 1.0f) fr = 1.0f; if (fr < -1.0f) fr = -1.0f;
            float fa = fl < 0 ? -fl : fl; if (fa > outPeak) outPeak = fa;
            int o = (written + i) * KS_CHANNELS;
            in[o] = fl;
            in[o + 1] = fr;
        }
        if (g_dtsFrames == 1 || (g_dtsFrames % 200) == 0)
            KSNDTS_LOGI("[float] DTS往返 #%d: 头=%02x%02x 编%dB 解%d 真上混=%s 风格=%d 入峰=%.3f 出峰=%.3f",
                        g_dtsFrames, obuf[0], obuf[1], n, ns,
                        useUpmix ? "ON(PARMA)" : "off", g_style, inPeak, outPeak);
        written += chunk;
        int consume = g_inSize;
        int remain = g_accLen - consume;
        if (remain > 0)
            for (int chn = 0; chn < KS_CHANNELS; chn++)
                for (int i = 0; i < remain; i++)
                    acc[i * KS_CHANNELS + chn] = acc[(i + consume) * KS_CHANNELS + chn];
        g_accLen = remain;
    }
    (*env)->ReleaseFloatArrayElements(env, buf, in, 0);
    (void)written;
}

JNIEXPORT void JNICALL
Java_com_ksn_audiomax_core_DtsReal_nativeSetStyle(JNIEnv *env, jclass c, jint style) {
    (void)env; (void)c;
    g_style = (style >= 0 && style <= 2) ? style : 1;
    KSNDTS_LOGI("DTS:X 风格 -> %d (%s)", g_style,
                g_style == 2 ? "外放 speaker" : (g_style == 1 ? "影院 surround" : "标准"));
}

/* 真 DTS:X/DTS-HD 解码: 用一个文件路径(内存字节由 Java 写临时文件) → 立体声 short outPcm.
 * 返回解码出的立体声帧数, 失败 -1. meta={声道, 采样率, profile}. */
JNIEXPORT jint JNICALL
Java_com_ksn_audiomax_core_DtsReal_nativeDecodeDtsxFile(JNIEnv *env, jclass c, jstring path,
                                                   jshortArray outPcm, jintArray meta) {
    (void)c;
    if (!path) return -1;
    const char *p = (*env)->GetStringUTFChars(env, path, 0);
    if (!p) return -1;

    struct dcadec_stream *s = dcadec_stream_open(p, 0);
    (*env)->ReleaseStringUTFChars(env, path, p);
    if (!s) { KSNDTS_LOGI("decodeDtsxFile: 打开失败 %s", path ? "?" : "null"); return -1; }

    struct dcadec_context *d = dcadec_context_create(0);
    jsize cap = outPcm ? (jsize)(*env)->GetArrayLength(env, outPcm) : 0;   /* short 数 = 帧*2 */
    int maxFrames = (int)(cap / 2);
    int32_t *raw = (int32_t *)malloc(sizeof(int32_t) * cap);   /* 存 L/R 交织 s32 */
    if (!d || !raw || maxFrames <= 0) {
        dcadec_stream_close(s); if (d) dcadec_context_destroy(d); free(raw);
        return -1;
    }
    int stored = 0; int ch = 2, sr = 0, prof = -1; int32_t peak = 0;
    uint8_t *pkt = NULL; size_t pktSz = 0;
    while (stored < maxFrames) {
        int rd = dcadec_stream_read(s, &pkt, &pktSz);
        if (rd <= 0) break;
        int pr = dcadec_context_parse(d, pkt, pktSz);
        if (pr < 0) continue;
        int **planes = NULL; int ns = 0, cmask = 0, rsr = 0, bps = 0, profx = 0;
        if (dcadec_context_filter(d, &planes, &ns, &cmask, &rsr, &bps, &prof) < 0) continue;
        if (rsr) sr = rsr;
        int nch = 0; for (int m = cmask; m; m &= m - 1) nch++;
        if (nch) ch = nch;
        for (int i = 0; i < ns && stored < maxFrames; i++) {
            int32_t L = planes[0][i];
            int32_t R = (nch >= 2 && planes[1]) ? planes[1][i] : L;
            int a = L < 0 ? -L : L; if (a > peak) peak = a;
            raw[stored * 2] = L; raw[stored * 2 + 1] = R;
            stored++;
        }
    }
    /* 峰值归一化: 任意源分辨率(16/24bit)都归一到满幅 short */
    double scale = (double)(peak > 0 ? peak : 32768);
    jshort *op = (*env)->GetShortArrayElements(env, outPcm, 0);
    for (int i = 0; i < stored; i++) {
        int32_t L = (int32_t)(raw[i * 2] / scale * 32767.0);
        int32_t R = (int32_t)(raw[i * 2 + 1] / scale * 32767.0);
        if (L > 32767) L = 32767; if (L < -32768) L = -32768;
        if (R > 32767) R = 32767; if (R < -32768) R = -32768;
        op[i * 2] = (jshort)L; op[i * 2 + 1] = (jshort)R;
    }
    (*env)->ReleaseShortArrayElements(env, outPcm, op, 0);
    free(raw);
    if (meta) { jint m[3] = {ch, sr, prof}; (*env)->SetIntArrayRegion(env, meta, 0, m, 3); }
    dcadec_context_destroy(d);
    dcadec_stream_close(s);
    KSNDTS_LOGI("decodeDtsxFile: 解出 %d 立体声帧 ch=%d sr=%d profile=%d peak=%d", stored, ch, sr, prof, peak);
    return stored;
}

JNIEXPORT void JNICALL
Java_com_ksn_audiomax_core_DtsReal_releaseAll(JNIEnv *env, jclass c) {
    (void)env; (void)c;
    if (g_enc) { dcaenc_destroy(g_enc, NULL); g_enc = NULL; }
    if (g_dec) { dcadec_context_destroy(g_dec); g_dec = NULL; }
    free(g_acc); free(g_decPcm); free(g_dts);
    g_acc = g_decPcm = g_dts = NULL;
    g_accLen = 0; g_accCap = 0;
}
