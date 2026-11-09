// Real DTS PARMA upmix + soft limiter, exposed to the live engine (libksndtsreal).
// Turn captured stereo (already DTS-decoded, [-1,1]) into an immersive upmix and
// fold it back to stereo, so the 3 styles are audibly different through REAL DSP.
#include <cstdint>
#include <cstring>
#include <vector>

#include "audio/layout.hpp"
#include "render/parma_blind_renderer.hpp"
#include <android/log.h>

namespace {
// style 0=standard(5.1)  1=cinema(7.1.4)  2=external(stereo)
const char* kLayoutName[3] = {"5.1", "7.1.4", "stereo"};
dtsx_decode::ParmaBlindRenderer g_ren[3];

// Downmix planar output (layout channel order) to stereo, in [-1,1] floats.
void downmix_to_stereo(const dtsx_decode::ChannelLayout& lay,
                       const std::vector<std::vector<std::int32_t>>& out,
                       int frames, float* dst) {
    const auto& ch = lay.channels;
    auto pick = [&](std::string_view c) -> int {
        for (std::size_t i = 0; i < ch.size(); ++i)
            if (ch[i] == c) return static_cast<int>(i);
        return -1;
    };
    int iFL = pick("FL"), iFR = pick("FR"), iFC = pick("FC");
    int iBL = pick("BL"), iBR = pick("BR");
    int iSL = pick("SL"), iSR = pick("SR");
    int iFLC = pick("TFL"), iFRC = pick("TFR"), iBLC = pick("TBL"), iBRC = pick("TBR");
    const std::size_t n = out.empty() ? 0 : out.front().size();
    const float kRear = 0.707f, kTop = 0.5f, kCen = 0.5f;
    for (int i = 0; i < frames; ++i) {
        auto val = [&](int idx, int fallback) {
            if (i < static_cast<int>(n) && idx >= 0 && idx < (int)out.size())
                return (float)out[idx][i] / 32768.0f;
            if (fallback >= 0 && fallback < (int)out.size())
                return (float)out[fallback][i] / 32768.0f;
            return 0.0f;
        };
        float L = 0.0f, R = 0.0f;
        L += val(iFL, 0);
        R += val(iFR, 1);
        // rear
        int rl = (iBL >= 0 ? iBL : iSL);
        int rr = (iBR >= 0 ? iBR : iSR);
        L += kRear * val(rl, iFL);
        R += kRear * val(rr, iFR);
        // tops
        if (iFLC >= 0) L += kTop * val(iFLC, iFL);
        if (iFRC >= 0) R += kTop * val(iFRC, iFR);
        if (iBLC >= 0) L += kTop * val(iBLC, iFL);
        if (iBRC >= 0) R += kTop * val(iBRC, iFR);
        // center
        if (iFC >= 0) { float c = val(iFC, -1); L += kCen * c; R += kCen * c; }
        // soft clip
        if (L > 1.0f) L = 1.0f; else if (L < -1.0f) L = -1.0f;
        if (R > 1.0f) R = 1.0f; else if (R < -1.0f) R = -1.0f;
        dst[i * 2] = L;
        dst[i * 2 + 1] = R;
    }
}
} // namespace

extern "C" {

// Returns 0 on success, -1 if the real upmix path is unavailable/failed for
// this style (caller then keeps the lightweight DTS round-trip output).
int kdn_upmix_float(const float* inStereo, int frames, int style,
                   float* outStereo) {
    if (!inStereo || !outStereo || frames <= 0) return -1;
    if (style < 0 || style > 2) style = 1;
    auto layOpt = dtsx_decode::find_layout(kLayoutName[style]);
    if (!layOpt) return -1;
    const auto& lay = *layOpt;

    std::vector<std::vector<std::int32_t>> in(2, std::vector<std::int32_t>(frames));
    for (int i = 0; i < frames; ++i) {
        in[0][i] = static_cast<std::int32_t>(inStereo[i * 2] * 32767.0f);
        in[1][i] = static_cast<std::int32_t>(inStereo[i * 2 + 1] * 32767.0f);
    }
    std::vector<std::vector<std::int32_t>> out;
    bool ok = g_ren[style].render(in, 0x3u /*FL|FR*/, lay, 48000, out);
    if (!ok || out.empty()) {
        __android_log_print(ANDROID_LOG_WARN, "DtsUpmix",
                            "kdn_upmix_float style=%d render fail (out=%zu)",
                            style, out.size());
        return -1;
    }
    downmix_to_stereo(lay, out, frames, outStereo);
    return 0;
}

} // extern "C"
