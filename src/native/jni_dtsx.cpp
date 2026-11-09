// JNI bridge: expose the real almirus DTS:X decoder (run_pipeline) to Java.
// 也内置 dcadec 真 DTS core/HD 解码作回退: 非 DTS:X 的普通 DTS 素材也能真解。
#include <jni.h>
#include <string>
#include <cstdio>
#include <cstdint>
#include <vector>

#include "app/pipeline.hpp"
#include "app/options.hpp"
extern "C" {
#include "dca_stream.h"
#include "dca_context.h"
}

#include <android/log.h>

#define ALOGD(tag, ...) __android_log_print(ANDROID_LOG_DEBUG, tag, __VA_ARGS__)

namespace {
std::string style_to_layout(int style) {
    // 0 = standard(5.1), 1 = cinema(7.1.4), 2 = external(stereo)
    switch (style) {
        case 1:
            return "7.1.4";
        case 2:
            return "stereo";
        default:
            return "5.1";
    }
}

// ---- dcadec 真 DTS core/HD 解码 → 立体声 16-bit WAV (非 DTS:X 素材的回退真解码) ----
int dcadec_decode_to_wav(const char* in, const char* outWav) {
    struct dcadec_stream* st = dcadec_stream_open(in, 0);
    if (!st) {
        ALOGD("DtsRealX", "dcadec_stream_open 失败 %s", in);
        return -1;
    }
    struct dcadec_context* ctx = dcadec_context_create(0);
    if (!ctx) {
        dcadec_stream_close(st);
        return -1;
    }

    std::vector<int32_t> L, R;   // s32 立体声 (dcadec 输出满幅 ~ 2^23)
    uint8_t* pkt = nullptr;
    size_t psz = 0;
    while (true) {
        int rr = dcadec_stream_read(st, &pkt, &psz);
        if (rr <= 0) break;
        if (dcadec_context_parse(ctx, pkt, (int)psz) < 0) continue;
        int** planes = nullptr;
        int ns = 0, cm = 0, sr = 0, bps = 0, prof = 0;
        if (dcadec_context_filter(ctx, &planes, &ns, &cm, &sr, &bps, &prof) < 0) continue;
        if (!planes || ns <= 0) continue;
        // DTS 通道序: 0=FL 1=FR 2=FC 3=RL 4=RR 5=LFE ...
        auto ch = [&](int idx) -> int* {
            return (idx < 12 && planes[idx]) ? planes[idx] : nullptr;
        };
        L.reserve(ns);
        R.reserve(ns);
        for (int i = 0; i < ns; i++) {
            int32_t fl = ch(0) ? ch(0)[i] : 0;
            int32_t fr = ch(1) ? ch(1)[i] : 0;
            int32_t fc = ch(2) ? ch(2)[i] : 0;
            int32_t rl = ch(3) ? ch(3)[i] : 0;
            int32_t rr2 = ch(4) ? ch(4)[i] : 0;
            // 5.1 -> 立体声下混 (后环绕 0.707, 中置 0.5)
            int64_t l64 = (int64_t)fl + ((int64_t)fc * 128 >> 8) + ((int64_t)rl * 181 >> 8);
            int64_t r64 = (int64_t)fr + ((int64_t)fc * 128 >> 8) + ((int64_t)rr2 * 181 >> 8);
            int32_t lv = (int32_t)(l64 > INT32_MAX ? INT32_MAX : (l64 < INT32_MIN ? INT32_MIN : l64));
            int32_t rv = (int32_t)(r64 > INT32_MAX ? INT32_MAX : (r64 < INT32_MIN ? INT32_MIN : r64));
            L.push_back(lv);
            R.push_back(rv);
        }
    }
    dcadec_context_destroy(ctx);
    dcadec_stream_close(st);

    if (L.empty()) {
        ALOGD("DtsRealX", "dcadec 未解出样本(%s) -> 可能非 DTS 或需 DTS:X 管线", in);
        return -1;
    }
    // 峰值归一化到 16-bit
    int32_t peak = 1;
    for (size_t i = 0; i < L.size(); i++) {
        int a = L[i] < 0 ? -L[i] : L[i];
        int b = R[i] < 0 ? -R[i] : R[i];
        if (a > peak) peak = a;
        if (b > peak) peak = b;
    }
    double scale = (peak > 0) ? (32767.0 / (double)peak) : 1.0;

    FILE* f = fopen(outWav, "wb");
    if (!f) return -1;
    const int nch = 2;
    const uint32_t sr = 48000;
    const uint32_t nbytes = (uint32_t)(L.size() * nch * 2);
    uint32_t chunk = 36 + nbytes;
    uint8_t hdr[44] = {0};
    hdr[0]='R';hdr[1]='I';hdr[2]='F';hdr[3]='F';
    hdr[4]=chunk&0xff;hdr[5]=(chunk>>8)&0xff;hdr[6]=(chunk>>16)&0xff;hdr[7]=(chunk>>24)&0xff;
    hdr[8]='W';hdr[9]='A';hdr[10]='V';hdr[11]='E';
    hdr[12]='f';hdr[13]='m';hdr[14]='t';hdr[15]=' ';
    hdr[16]=16;hdr[17]=0;hdr[18]=0;hdr[19]=0;              // fmt chunk size
    hdr[20]=1;hdr[21]=0;                                    // PCM
    hdr[22]=nch&0xff;hdr[23]=(nch>>8)&0xff;                  // channels
    hdr[24]=sr&0xff;hdr[25]=(sr>>8)&0xff;hdr[26]=(sr>>16)&0xff;hdr[27]=(sr>>24)&0xff;
    uint32_t byterate = sr * nch * 2;
    hdr[28]=byterate&0xff;hdr[29]=(byterate>>8)&0xff;hdr[30]=(byterate>>16)&0xff;hdr[31]=(byterate>>24)&0xff;
    hdr[32]=nch*2;hdr[33]=0;                                 // block align
    hdr[34]=16;hdr[35]=0;                                     // bits per sample
    hdr[36]='d';hdr[37]='a';hdr[38]='t';hdr[39]='a';
    hdr[40]=nbytes&0xff;hdr[41]=(nbytes>>8)&0xff;hdr[42]=(nbytes>>16)&0xff;hdr[43]=(nbytes>>24)&0xff;
    fwrite(hdr, 1, 44, f);
    for (size_t i = 0; i < L.size(); i++) {
        int32_t lv = (int32_t)(L[i] * scale);
        int32_t rv = (int32_t)(R[i] * scale);
        if (lv > 32767) lv = 32767; if (lv < -32768) lv = -32768;
        if (rv > 32767) rv = 32767; if (rv < -32768) rv = -32768;
        uint8_t bl[2] = {(uint8_t)(lv & 0xff), (uint8_t)((lv >> 8) & 0xff)};
        uint8_t br[2] = {(uint8_t)(rv & 0xff), (uint8_t)((rv >> 8) & 0xff)};
        fwrite(bl, 1, 2, f);
        fwrite(br, 1, 2, f);
    }
    fclose(f);
    ALOGD("DtsRealX", "dcadec 真解码: %d 立体声帧 peak_s32=%d -> %s",
          (int)L.size(), peak, outWav);
    return 0;
}
} // namespace

extern "C" {

JNIEXPORT jstring JNICALL Java_com_ksn_audiomax_core_DtsRealX_nativeEngineName(
    JNIEnv* env, jclass) {
    return env->NewStringUTF("DTS:X (almirus object+bed 解码/渲染) + dcadec 真 DTS core/HD 解码回退");
}

// 真解码: 先走 dcadec 真 DTS core/HD (内置素材即 DTS core, 稳定不崩);
// 只有 dcadec 解不出(说明是 DTS:X 对象流)才用 DTS:X 对象管线. 都写立体声 16-bit WAV.
// 返回 0 成功, 负数失败.
JNIEXPORT jint JNICALL Java_com_ksn_audiomax_core_DtsRealX_nativeDecodeFile(
    JNIEnv* env, jclass, jstring inPath, jstring outWav, jint style) {
    const char* in = env->GetStringUTFChars(inPath, nullptr);
    const char* out = env->GetStringUTFChars(outWav, nullptr);

    // 1) dcadec 真 DTS core/HD 解码 (优先, 可靠)
    int rc1 = dcadec_decode_to_wav(in, out);
    if (rc1 == 0) {
        env->ReleaseStringUTFChars(inPath, in);
        env->ReleaseStringUTFChars(outWav, out);
        return 0;
    }
    // 2) dcadec 解不出 -> 可能是 DTS:X 对象流, 走 DTS:X 对象管线
    {
        dtsx_decode::Options opts;
        opts.input = in;
        opts.output = out;
        opts.output_explicit = true;
        opts.overwrite = true;
        opts.layout = style_to_layout(style);
        opts.render_mode = dtsx_decode::RenderMode::Objects;
        opts.output_format = dtsx_decode::OutputFormat::Wav;
        opts.upmix = true;
        int rc2 = dtsx_decode::run_pipeline(opts);
        ALOGD("DtsRealX", "dcadec 失败(%d) -> DTS:X 对象管线 in=%s layout=%s rc=%d",
               rc1, in, opts.layout.c_str(), rc2);
        if (rc2 == 0) {
            env->ReleaseStringUTFChars(inPath, in);
            env->ReleaseStringUTFChars(outWav, out);
            return 0;
        }
    }
    env->ReleaseStringUTFChars(inPath, in);
    env->ReleaseStringUTFChars(outWav, out);
    return -1;
}

JNIEXPORT jint JNICALL Java_com_ksn_audiomax_core_DtsRealX_nativeProbeSize(
    JNIEnv* env, jclass, jstring inPath) {
    const char* in = env->GetStringUTFChars(inPath, nullptr);
    FILE* f = fopen(in, "rb");
    if (!f) {
        env->ReleaseStringUTFChars(inPath, in);
        return -1;
    }
    fseek(f, 0, SEEK_END);
    long sz = ftell(f);
    fclose(f);
    env->ReleaseStringUTFChars(inPath, in);
    return static_cast<jint>(sz);
}

} // extern "C"
