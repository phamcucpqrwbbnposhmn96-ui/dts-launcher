#!/system/bin/sh
# 模块安装时立即起一次(不等下次重启)
PKG=me.timschneeberger.rootlessjamesdsp
SVC=$PKG/.service.RootlessAudioProcessorService
chmod 755 /data/adb/modules/dtsx_system_audio/service.sh 2>/dev/null
if pm list packages 2>/dev/null | grep -q "$PKG"; then
  am start-foreground-service -n "$SVC" 2>/dev/null
  am startservice -n "$SVC" 2>/dev/null
fi
exit 0
