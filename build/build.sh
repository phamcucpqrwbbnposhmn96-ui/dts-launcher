#!/bin/sh
# DTS 开启器 构建参考(把 3 个 native 库编好 → 打进 apktool 重打的 apk → 签名)
# 需要: Android NDK(aarch64), apktool, build-tools(zipalign/apksigner/d8), jdk
# 源: JAMU 官方 apk → apktool d 展开 → 打本仓库 smali/res/asset 补丁 → apktool b 重打

NDK=${NDK:-$HOME/Library/Android/sdk/ndk/25.2.9519653}
BIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64/bin
CC=$BIN/aarch64-linux-android24-clang
CXX=$BIN/aarch64-linux-android24-clang++

# 1) 实时 DTS 引擎(dcaenc + dcadec + 本仓库 jni.c)
$CC -std=c11 -O2 -fPIC -DNDEBUG -I<dcaenc> -I<dcadec/libdcadec> -c jni.c -o jni.o
$CC -shared -O2 -fPIC -o libksndtsreal.so <a64 objs> jni.o math_tables_a64.o -lm -llog -ldl

# 2) 真 DTS:X 解码器(almirus 79 cpp + 内置 dcadec + qrcodegen + jni_dtsx + jni_upmix)
#    全部 C++17 编 aarch64, 链接时用 -static-libstdc++ -llog(否则缺 libc++_shared / liblog)
$CXX -shared -std=c++17 -O2 -fPIC -static-libstdc++ -llog -o libdtsxreal.so <all objs>
#    注意: jni_dtsx.cpp 里 dcadec 头必须包 extern "C", 否则 C++ 名字修饰导致 dlopen 找不到符号

# 3) 打进 apk: apktool 树里放 .so(extractNativeLibs=false 需 stored+4字节对齐),
#    注入 classes3.dex(本仓库 java) + .so, zipalign -f 4, apksigner sign
