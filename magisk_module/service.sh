#!/system/bin/sh
# Magisk service: 开机以 root 自启 DTS 处理(不依赖用户打开 App, 重启不掉).
PKG=me.timschneeberger.rootlessjamesdsp

# 1) 开机后等系统稳定, 自启 JAMU 的音频处理前台服务(触发 DTS 处理链)
sleep 45
# 触发应用自启(若用户设了开屏自启/后台常驻, 配合电池白名单)
su 0 cmd appops set $PKG ignore_battery_whitelist allow 2>/dev/null
# 部分 ROM 允许 root 直接拉起服务
cmd activity start-service $PKG/.service.RootlessAudioProcessorService 2>/dev/null

# 2) 持续看门狗: 若 DTS 服务被杀, 定期拉回(最多保活)
while true; do
  sleep 300
  pidof $PKG >/dev/null 2>&1 || cmd activity start $PKG/.activity.MainActivity >/dev/null 2>&1
done
