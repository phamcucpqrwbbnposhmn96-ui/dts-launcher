DTS:X 系统音频 — KernelSU/Magisk 模块
====================================

【作用】
开机自动拉起全局 DTS:X 音频处理器(JAMU 的 RootlessAudioProcessorService),
重启不掉。装一次后不用再打开 DTS 开启器 App。

【前提】
1. 手机上已安装 DTS 开启器(me.timschneeberger.rootlessjamesdsp)—— 模块只是陪跑, App 必须在。
2. 手机已 root(KernelSU)。
3. Shizuku 已授权(或已给 App 授 root), 全局 DTS:X 引擎能跑。

【导入】
KernelSU App → 底部「模块」/「Modules」→ 右上角「安装/导入」(或「从 zip 安装」)
→ 选这个 dtsx_system_audio.zip → 完成 → 重启(或立即生效, 脚本已内置)。

【查看状态】
/data/adb/modules/dtsx_system_audio/boot.log  记录每次开机拉起日志。

【移除】
KernelSU → 模块 → DTS:X System Audio → 卸载(会停掉服务)。
