# DTS 开启器 (dts-launcher)

> 基于 JAMU (RootlessJamesDSP) 改造 —— 把**真正的 DTS / DTS:X 编解码器**接入系统音频,让手机全局输出真 DTS:X 音效;支持**免 root(Shizuku)**、**纯 root(KernelSU/Magisk)** 双通道,可**开机自启、重启不掉**。

[![Release](https://img.shields.io/github/v/release/phamcucpqrwbbnposhmn96-ui/dts-launcher?label=latest)](https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher/releases)
[![APK Downloads](https://img.shields.io/github/downloads/phamcucpqrwbbnposhmn96-ui/dts-launcher/total)](https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher/releases)
[![Android](https://img.shields.io/badge/Android-9%2B%20(Shizuku)%20%2F%20rooted-6c5ce7?logo=android)](https://developer.android.com/)
[![License](https://img.shields.io/badge/license-internal/brightgreen.svg)](https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher)

**Star 支持本项目:** [★ dts-launcher](https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher)

---

## 目录
- [特性](#-特性)
- [为什么是真 DTS:X](#-为什么是真-dtsx不是糊弄)
- [架构 / 处理链](#-架构--处理链)
- [安装](#-安装)
- [KernelSU 模块(一键导入,重启不掉)](#-kernelsu-模块)
- [使用 / 开关](#-使用--开关)
- [注入通道(免 root / root)](#-注入通道)
- [从源码构建](#-从源码构建)
- [仓库结构](#-仓库结构)
- [用到的技术方法](#-用到的技术方法)
- [更新日志](#-更新日志)
- [FAQ / 局限](#-faq--局限)

---

## ✨ 特性
- **全局 DTS:X** —— 捕获系统输出音频,过**真 DTS 编解码 + DTS:X 对象解码器**处理后再注入回去。
- **双通道注入** —— 免 root(Shizuku rootless 代理)/ 纯 root(KernelSU / Magisk,`am` 直起服务 + 模块持久化)。
- **删掉系统自带音效** —— root 一键 `disable-user` 掉厂商音效包(可逆,一键恢复)。
- **DTSX 设置实时生效** —— EQ / 低频 / DDC / 增益 / DTSX 模式,调了系统音频随之变。
- **开机自启、重启不掉** —— KernelSU/Magisk 模块在启动末尾自动拉起处理器服务。
- **液态玻璃 UI** —— 真实 GPU 实时折射(边缘 refraction + bevel)+ 真·Material Slider。
- **真 DTS 素材** —— 内置 `dts_in_chains.dts` / `dts_world.dts`(真 DTS core, 0x7FFE 帧)。

## 🧬 为什么是真 DTS:X(不是糊弄)
全部底层用**真实开源 DTS 引擎**,非自造 DSP 顶个名字:

| 引擎 | 来源 | 作用 |
|------|------|------|
| `dcaenc` | DTS Coherent Acoustics **编码器**(开源) | PCM → 真 DTS 比特流(0x7FFE 帧) |
| `libdcadec` | DTS Coherent Acoustics **解码器**(开源) | DTS 比特流 → PCM(真 DTS 往返) |
| `almiros/DTSX_decoder` | 开源**真 DTS:X 对象解码器** | DTS:X 对象 + XLL + 床声 + PARMA 盲/导渲染 |
| `ParmaBlindRenderer` | 同上 | 真·盲上混到 5.1 / 7.1.4,不同风格听感真有差别 |
| Android `audiofx` | 系统 API | 在会话上叠 DTS 风格 EQ + Virtualizer + Loudness |

> 上机已验证:真 DTS core 素材解码出 PCM 并播放;DTSX 引擎初始化 `libdtsxreal`(object + XLL + PARMA),**非直通/非假**。

## 🏗 架构 / 处理链
```
其它 App 输出 (系统混音)
   │  [Shizuku rootless 代理  /  纯 root]  捕获
   ▼
捕获 PCM (PcmFloat 48k)
   │
   ├─▶ dcaenc 编真 DTS ─▶ dcadec 解回 PCM          [真 DTS 实时往返]
   │
   ├─▶ [风格] almirus DTSX: object/XLL/床声/PARMA 渲染 + 盲上混 5.1/7.1.4 ─▶ 下混
   │
   ├─▶ audiofx: DTS 风格 EQ + Virtualizer + LoudnessEnhancer
   │
   └─▶ (可选) 脉冲响应 convolver / 动态低音 / 数放模拟  —— 全部叠加在 DTS 输出上
   ▼
重注入系统音频 → 你听到的是「真 DTS:X 处理过」的全局声音
   ▼
KernelSU/Magisk 模块: 开机末尾自动拉起处理器服务 → 重启不掉
```

## 📦 安装
1. 从 [Releases](https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher/releases) 下载最新 APK(或走国内 R2 一键链接)。
2. 安装后:
   - **免 root**: 装 [Shizuku](https://github.com/RikkaApps/Shizuku),在 Shizuku 里授权本 App(或 adb 激活)。
   - **root(KernelSU/Magisk)**: 在 KernelSU/Magisk 里给本 App **授予 root**,App 即能以 uid 0 跑。
3. 打开 App → 自动选可用通道(优先 root,其次 Shizuku),进主页并跑全局 DTS:X。

## 🧩 KernelSU 模块
`kernelsu_module/dtsx_system_audio.zip` —— 直接在 KernelSU 里「模块 → 导入 zip」:
- 开机末尾以 root 自动拉起全局 DTS:X 处理器服务。
- 日志写 `/data/adb/modules/dtsx_system_audio/boot.log`。
- 移除:KernelSU → 模块 → 卸载。
> 前提:App 已安装、Shizuku/root 就绪。模块只是「开机自动拉起」,引擎仍在 App 内。

## ⚙️ 使用 / 开关
在 App「设置 → 音频格式 → DTS 区」:
- **Root 一键接管系统音频为 DTS:X** —— 起全局 DTSX + 写模块(重启不掉)+ 禁用系统自带音效。
- **恢复系统自带音效** —— 把刚才禁用的音效包重新启用(可逆)。
- **Root 一键进主页** —— 跳过 onboarding 直进主页。
- **DTSX 风格 / 全局开关 / 立即注入** —— 改 DTSX 模式与全局处理。
- DTS 相关设置(EQ/低频/DDC/增益)在主页各 DSP 页,全局引擎实时吃这些值。

## 🔌 注入通道
`KsnDtsSys.inject()` 多方法自动回退,执行日志写 logcat + 本地文件:
1. **root 通道(优先)** —— `rootAvailable()`(uid==0 或 `su -c id`)→ 直接 `am` 起服务 + 写模块。
2. **Shizuku(rootless 代理)** —— `rikka.shizuku.Shizuku.checkSelfPermission()==0` 即通。
3. **adb 激活 Shizuku** —— 需 USB adb 在线。

## 🔧 从源码构建
见 `build/build.sh` + `docs/injection.md`。概要:
- NDK 编译 `src/native/*.c|cpp` → `libdts_decoder.so` / `libksndtsreal.so` / `libdtsxreal.so`(aarch64 等)。
- apktool 反编译 JAMU → 重打 `src/res` + `src/smali` → 注入 `classes3.dex`(DTS 引擎 Java 桥)+ `.so`。
- `zipalign` + `apksigner` 签名。
> `src/native/libs/<abi>/*.so` 已内置编译产物,无 NDK 也能重打包。

## 📁 仓库结构
```
src/native/             jni.c(实时 DTS 引擎) / jni_dtsx.cpp(真 DTSX 解码) / jni_upmix.cpp(PARMA 上混)
src/native/libs/<abi>   编译好的 .so(dts_decoder / ksndtsreal / dtsxreal / jamesdsp)
src/java/com/ksn/audiomax/core/
    DtsReal.java        实时引擎 Java 桥 + 设置轮询/监听 + 各开关处理器(poller)
    DtsRealX.java       真 DTS:X 文件解码/上混 Java 桥
    KsnDtsSys.java      注入多方法 + root 通道 + 接管系统音频 + 禁用/恢复系统音效 + 模块
    KsnDtsBoot.java     开机 BOOT_COMPLETED 重注入
    LiquidGlass.java    液态玻璃(实时 RenderEffect 折射 + 高对比文字)
    DtsSelfTest.java    audiofx DTS DSP(EQ/空间/响度)按风格
    DtsNative.java      native 声明
src/smali/              改动过的 JAMU smali(热循环钩子 / Shizuku 权限 / onboarding / 滑杆震动)
src/res/                主题(液态玻璃+海洋背景+Material Slider)/ 设置 xml / 字符串 / 色
src/assets/dts/         内置真 DTS 素材
kernelsu_module/        可导入的 KernelSU 模块(zip + 源码)
magisk_module/          Magisk 模块要点
build/  docs/           构建脚本 + 注入/技术文档
release.sh              一键发 Release(带 changelog + APK 附件)
```

## 🧠 用到的技术方法
详见 [`docs/techniques.md`](docs/techniques.md) —— 包括:
- **smali 手术**:JAMU PcmFloat 热循环钩子、Shizuku 权限、onboarding 跳页、滑杆震动。
- **实时 GPU 折射**:View `RenderEffect` + `RuntimeShader`(圆角 SDF 边缘 refraction + bevel,滚动实时跟卡片)。
- **真 DTS/DTS:X 解码**:dcaenc+dcadec 往返、almiros 对象解码 + PARMA 盲上混、NDK 交叉编译。
- **免 root / 纯 root 注入**:Shizuku rootless 代理、KernelSU(uid 0 直起)/ Magisk 模块持久化。
- **删系统音效**:`pm disable-user`(可逆)禁厂商音效包。

## 📝 更新日志
见 [`CHANGELOG.md`](CHANGELOG.md) 与 [Releases](https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher/releases)(每次迭代都推,带更新说明)。

## ❓ FAQ / 局限
- **免 root 能写进 /system 吗?** 不能(dm-verity 锁分区)。免 root 做到的是 Shizuku(UID 2000)挂全局音频 + 开机重注入(Shizuku 重启后需再激活一次)。
- **要「写进系统音频、重启不掉、完全不开 App」?** 用 **root / KernelSU 模块**(`kernelsu_module/`),启动末尾自动拉起。
- **会砖音频吗?** 删系统音效用可逆 `disable-user`,不碰 `/system`;「重写 HAL 二进制」这类 ROM 级手术本方案**不做**(风险不可控),用等效的「全局处理器 + 关系统音效 + 模块持久化」。

---

⭐ 喜欢就点个 Star:[dts-launcher](https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher)
