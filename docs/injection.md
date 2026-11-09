# 免 root 系统音频注入 — 多方案 + 执行日志

`KsnDtsSys.inject(ctx, mode)` 按设备/版本自动尝试, 全失败才提示; 每一步实时记 logcat + 本地文件。

## 方法(按序自动回退)
1. **Shizuku(rootless 代理, 主路径)** — 免 root, 需 Shizuku 在跑(shell/adb 已授权)。
   探测: `rikka.shizuku.Shizuku.checkSelfPermission()==0`(= 已连+已授权)。
2. **adb 激活 Shizuku** — 同上, 强调需 USB adb 在线; 用户可在 Shizuku App 点「通过 ADB 启动」。
3. **提示手动 / root(Magisk)** — 前两者不可用时的兜底。

执行日志(`KsnDtsJAMU: INJ: ...`):
```
INJ: === 注入开始 === 设备=vivo V2361A Android 35 用户uid=10387
INJ: 尝试方法 1 [Shizuku(rootless 代理)] ...
INJ:   Shizuku: checkSelfPermission=0 (Shizuku 已连+已授权)
INJ: 方法1 Shizuku 注入成功
```

## 开机重注入
`KsnDtsBoot`(BOOT_COMPLETED/USER_PRESENT): 重新拿 WakeLock + 重跑 `inject`。
Shizuku 重启后需再激活(adb 或 App「自启/开机启动」), 之后本 App 的开机广播会自动重新注入 DTS。

## 物理上限(诚实说明)
- 纯免 root **不能写 `/system`**(dm-verity 锁), 也不能保证「完全不依赖本 App + 重启不掉」。
- 免 root 的上限 = Shizuku(UID 2000)挂全局音频 + 开机重注入。
- **要真正「写进系统音频、重启不掉、不开 App 也生效」= root / Magisk 音频模块。**

## Magisk 模块要点(root 方案)
- `post-fs-data.sh`: 用 Shizuku/或直接以 root 把 DTS 处理挂在 audio HAL / audio_policy 的 effect 上。
- `service.sh`: 启动常驻 DTS 处理(本 App 的 native 引擎), 注册到音频 effect 链。
- 开机自启 → 重启不掉; 不依赖本 App UI。
