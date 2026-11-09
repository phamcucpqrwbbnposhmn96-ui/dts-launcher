# Magisk root 模块 —「写系统音频 / 重启不掉 / 不开 App」的唯一真路

**物理事实**: 纯免 root 写不了 `/system`(dm-verity 锁死分区), 也做不到「完全不依赖 App + 重启不掉」。
要「光代码注入、不开 App、重启也生效」= **root(Magisk) 模块**, 就是本目录。

## 装法
1. 把 `magisk_module/` 整目录(含 `module.prop`/`service.sh`/`post-fs-data.sh`)打包成 zip。
2. Magisk App → 安装模块 → 本地模块 → 选该 zip → 重启。

## 它做什么
- `post-fs-data.sh`: 早期 init(可在此做 audio policy/HAL 侧改写, 进阶)。
- `service.sh`: 开机 root 保活 JAMU 音频处理服务(被杀自动拉起) → DTS 处理**不依赖用户开 App**, 且**每次开机自启(重启不掉)**。

## 免 root 版本对照(对比理解上限)
- 免 root = Shizuku(UID 2000)挂全局音频 + 本 App 的开机广播重注入(`KsnDtsBoot`); **Shizuku 重启后要再激活一次**。
- root = 本模块, 真·开机自启、不依赖 App、重启不掉。
