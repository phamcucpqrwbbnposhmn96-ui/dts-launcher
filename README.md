# DTS 开启器 (dts-launcher)

基于 JAMU (RootlessJamesDSP) 改造的**真 DTS 音效 + 免 root 系统音频注入**方案。

> 目标: 捕获其它 App 的音频 → 过**真正的 DTS 编解码器**处理 → 输出 DTS 处理后的声音;
> 同时把 DTS 音效**注入到系统音频**, 免 root、App 关掉后仍生效(在 Shizuku 存活的前提下)。

---

## 核心(全部为真实开源 DTS 底层, 非自造 DSP 糊弄)

| 模块 | 来源 | 作用 |
|------|------|------|
| `dcaenc` | 开源 DTS Coherent Acoustics **编码器** | 把捕获 PCM 编成**真 DTS 比特流**(0x7FFE 帧) |
| `dcadec` (libdcadec) | 开源 DTS Coherent Acoustics **解码器** | 把 DTS 比特流解回 PCM(真 DTS 往返) |
| `almirus/DTSX_decoder` | 开源**真 DTS:X 对象解码器**(79 个 C++ 文件: object + XLL + 床声 + PARMA 盲/导渲染 + dca_bed) | 真 DTS:X 文件解码 + 扬声器渲染 |
| `ParmaBlindRenderer` | 同上 | 真·盲上混到 5.1 / 7.1.4, 让不同风格听感真有差别 |
| Android `audiofx` | 系统 API | 在会话上套 DTS 风格 EQ + Virtualizer + Loudness(风格差异化) |

**DTS 处理链(全部基于 DTS 解码输出, 像均衡器叠加在 DTS 上):**
```
捕获 PCM (PcmFloat 48k)
  → dcaenc 编真 DTS → dcadec 解回 PCM        [实时往返, 有声音]
  → [风格] PARMA 上混 5.1/7.1.4 → 下混立体声   [真 DSP, 让影院/外放听感不同]
  → audiofx: DTS 风格 EQ + Virtualizer + LoudnessEnhancer
  → (可选叠加) 脉冲响应(convolver) / 动态低音 / 数放模拟 —— 都加在 DTS 输出上
```

---

## 文件结构
```
src/native/jni.c            实时 DTS 引擎(dcaenc+dcadec 往返 + PARMA 上混桥 + 峰值校准)
src/native/jni_dtsx.cpp     almirus 真 DTS:X 解码器 JNI + dcadec 真 DTS core/HD 回退(文件解码)
src/native/jni_upmix.cpp    真 PARMA 盲上混(C 导出 kdn_upmix_float)
src/java/.../DtsReal.java   实时引擎 Java 桥 + 设置监听/轮询 + 风格/注入开关
src/java/.../DtsRealX.java  真 DTS:X 文件解码/上混 Java 桥(含解码播放)
src/java/.../KsnDtsSys.java 免 root 注入: 多方法自动回退 + 执行日志
src/java/.../KsnDtsBoot.java 开机 BOOT_COMPLETED 重注入
src/java/.../DtsSelfTest.java  audiofx DTS DSP(EQ/空间/响度)按风格
src/smali/*.smali          改动过的 JAMU smali(热循环钩子 / Shizuku 权限 / 应用 onCreate)
src/res/xml/               设置(音频格式=DTS:X 引擎) 与 关于(只留本仓库+Star)
src/assets/dts/            内置真 DTS 素材
```

## 免 root 注入(见 docs/injection.md)
多方法自动回退: **Shizuku(rootless 代理) → adb 激活 Shizuku → 提示 root/Magisk**。
执行日志实时写 logcat + 本地文件, 注入成功/失败直接给结论。

**物理上限(务必了解):** 纯免 root **写不进 `/system`**(dm-verity 锁死分区), 也不能做到
「完全不依赖本 App + 重启不掉」。免 root 能做到的是 Shizuku(UID 2000)挂全局音频 +
开机重注入(Shizuku 重启后需再激活一次)。真正「写进系统音频、重启不掉、不开 App」=
**root / Magisk 音频模块**(docs/injection.md 给了模块要点)。

## 构建
见 `build/`(NDK aarch64 编译 3 个 native 库 → apktool 重打 → 注入 dex+.so → 签名)。
