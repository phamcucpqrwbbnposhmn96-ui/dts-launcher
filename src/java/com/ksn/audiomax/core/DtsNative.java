package com.ksn.audiomax.core;

/** JNI 桥:符号对应 libksndts.so(→ libdts_decoder.so 真 DTS 解码)。静态 native 对齐 C 的 jclass 签名。 */
public final class DtsNative {
    public static final DtsNative INSTANCE = new DtsNative();
    private DtsNative() {}
    public static native long create();
    public static native void close(long handle);
    public static native long decode(long handle, byte[] input, short[] out, int outCap);
    public static native void info(long handle, int[] out);
}
