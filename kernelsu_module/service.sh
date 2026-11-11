#!/system/bin/sh
# DTS:X 全局音频处理器 — 开机自启(重启不掉)
# KernelSU/Magisk 在启动末尾以 root 运行本脚本 → 拉起 JAMU 的 RootlessAudioProcessorService
MOD=/data/adb/modules/dtsx_system_audio
PKG=me.timschneeberger.rootlessjamesdsp
SVC=$PKG/.service.RootlessAudioProcessorService

# 等系统 + Shizuku(内核 root 自启)就绪
sleep 45

# App 没装就跳过(模块只是陪跑, App 必须在)
if ! pm list packages 2>/dev/null | grep -q "$PKG"; then
  echo "$(date) dtsx: app $PKG not installed, skip" >> $MOD/boot.log 2>/dev/null
  exit 0
fi

# 拉起全局 DTS:X 处理器(前台 + 普通两种方式)
am start-foreground-service -n "$SVC" 2>/dev/null
am startservice -n "$SVC" 2>/dev/null
echo "$(date) dtsx: global DTS:X service started" >> $MOD/boot.log 2>/dev/null

exit 0
