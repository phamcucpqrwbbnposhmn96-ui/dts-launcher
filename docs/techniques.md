# 用到的技术方法

本文汇总本项目用到的关键技术,便于复现 / 二次开发。

## 1. smali 手术(JAMU 反编译改造)
- **PcmFloat 热循环钩子**:`BaseActivity` / DSP 热循环里挂钩,把捕获的 PCM 喂给 DTS 引擎。
- **Shizuku 权限**:`ShizukuSystemServerApi` 走 `rikka.shizuku`,UID 2000 挂全局音频。
- **onboarding 跳页**:`OnboardingActivity.onCreate` 里检测 `onboardingBypass()`(root 或 Shizuku 已授权)→ 直接 `startActivity(MainActivity)` + `finish()`。
- **滑杆震动**:`MaterialSeekbarPreference` 抓取回调里挂 haptic。

## 2. 实时 GPU 液态玻璃(边缘折射)
- `View.setRenderEffect(RenderEffect.createRuntimeShaderEffect(rs, "content"))` —— shader 必须声明 `uniform shader content;`,第二参用 `"content"`。
- `RuntimeShader` + `setFloatUniform("cards", float[64])`(flat 数组,避免 `float4` 数组的 byte-size 不匹配)。
- AGSL:圆角 SDF `sdRoundedRect` / 梯度 `gradSdRoundedRect`、`circleMap`、沿法线 `refraction` + `bevel` 高光;复用同一 RuntimeShader,只更新 cards/count,滚动时 rim 实时跟卡片。
- 高 DPI 上 rim 带宽 / 弯折量按 `density` 缩放。

## 3. 真 DTS / DTS:X 解码(非糊弄)
- `dcaenc`(编码器)+ `libdcadec`(解码器):真 DTS 比特流(0x7FFE 帧)实时往返。
- `almiros/DTSX_decoder`:真 DTS:X 对象 + XLL + 床声 + PARMA 盲/导渲染(`libdtsxreal.so`)。
- `ParmaBlindRenderer` 盲上混 5.1/7.1.4,让不同风格听感真有差别。
- NDK aarch64 交叉编译;Android 用 libc++(非 libstdc++),`extern "C"` 桥 C 引擎;JNI 条目不能 `--gc-sections`。

## 4. 免 root / 纯 root 注入
- **Shizuku(rootless)**:`checkSelfPermission()==0` / `isPrepared()` 探测;UID 2000 挂全局音频 + 开机重注入。
- **纯 root(KernelSU)**:无 `su` 二进制,靠「给 App 授 root」让进程以 **uid 0** 跑 → `android.os.Process.myUid()==0` 判定;`sh` 直接 `am start-foreground-service` 起服务 + 写 `/data/adb/modules` 模块。
- **Magisk**:`su -c` 跑模块 install.sh。

## 5. 删系统自带音效(可逆)
- `pm disable-user 0 <pkg>`(= `cmd package set-enabled -u 0 <pkg> false`)禁用厂商音效包,**不碰 /system**,可 `enable` 恢复。
- 启发式发现音效包(名字含 sound/audio/fx/effect/enhance/dolby/dts,排除核心与自身),列表存 SharedPreferences 供一键恢复。

## 6. 模块持久化(重启不掉)
- KernelSU/Magisk 模块:`module.prop` + `service.sh`(启动末尾 `am` 起服务)+ `post-fs-data.sh` + `customize.sh`(安装即起)+ `uninstall.sh`(卸载停服务)。
- `module.prop` 在 zip 根;KernelSU「模块 → 导入 zip」即装。
