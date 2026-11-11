# 更新日志

> 每个版本都推 GitHub Release(带 APK 附件 + 更新说明)。本文件为汇总。

## v1.3.6 — 仓库完善
- 重写 `README.md`:徽章 / 目录 / 特性 / 架构图 / 安装 / 模块 / 使用 / 构建 / 技术方法 / changelog / Star。
- 新增 `CHANGELOG.md`(本文件)、`docs/techniques.md`(用到的方法)。
- 补齐源码:7 个 DTS 引擎 Java 桥、改过的 smali、res(液态玻璃 + Material Slider + 海洋背景)、NDK 编译产物 `src/native/libs/<abi>/*.so`、KernelSU 模块 zip + 源码。
- 每个 Release 补更新说明。

## v1.3.5 — onboardingBypass
- 「Root 一键接管系统音频为 DTS:X」:root 起全局 DTSX + 写 KernelSU 模块(重启不掉)+ 禁用系统自带音效(可逆)。
- 「恢复系统自带音效」:一键可逆恢复被禁用的音效包。
- `onboardingBypass()`:root 或 Shizuku 已授权 → 自动跳过「选择设置方式」直进主页。
- root 通道设为**优先**(有 root 走 root,不碰 Shizuku)。

## v1.3.4 — 修首装崩溃 + Root 卡
- 修真机首装 `Resources$NotFoundException`(主题字面色 → `@color` 资源)。
- onboarding「选择设置方式」页显示 **Root** 卡(原被隐藏)。
- Root 一键进主页开关 + poller。

## v1.3.3 — 强边缘折射
- 液态玻璃**强边缘折射**(厚玻璃透镜,amount 提至 150)+ 近全透玻璃卡片。
- 文字高对比(白 + 深阴影)。
- 真·Material Slider 高级紫配色(`DtsSlider`)。

## v1.3.2 — 滑杆 Material 化 + 震动
- 主 DSP 滑杆 Material 化(大圆拇指 + 紫轨道)。
- 拖拽震动(haptic)。
- Root 一键写入 DTS:X 系统音频(Magisk 模块,重启不掉)+ DTS 真实解码。

## v1.3.1 — 滑杆震动
- 滑杆抓取回调挂 haptic(滑一下震一下)。

## v1.3.0 — 边缘折射 + 海洋背景 + Root
- 卡片圆角 rim GPU 实时折射 + 纯蓝海洋背景(无建筑)+ 白字描边。
- Root 一键写入 DTSX 系统音频(Magisk 模块)。

## v1.2.0 — 液态玻璃 UI
- 引入 LiquidGlass(实时 RenderEffect)+ 全局 DTS 解码引擎接入。

## v1.1.1 / v1.1.0 — 注入与持久化
- 免 root 注入多方法自动回退 + 执行日志 + 开机重注入(BOOT_COMPLETED)。

## v1.0.0 — 首个版本
- 基于 JAMU 改造,真 DTS 编解码 + DTSX 解码引擎 + 全局音频代理基础。
