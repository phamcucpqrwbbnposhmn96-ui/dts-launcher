#!/system/bin/sh
# 卸载模块: 停掉 DTS:X 处理器服务
PKG=me.timschneeberger.rootlessjamesdsp
SVC=$PKG/.service.RootlessAudioProcessorService
am stopservice -n "$SVC" 2>/dev/null
exit 0
