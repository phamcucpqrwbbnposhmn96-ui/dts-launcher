#!/system/bin/sh
# 早期 init: 标记本模块启用 root 自启 DTS. 可在此做音频策略/HAL 侧改写(进阶).
PKG=me.timschneeberger.rootlessjamesdsp
# 进阶(可选): 若需真正"改写系统音频 HAL", 在此挂载/补丁 audio policy;
# 本模块默认走"root 保活 App 服务"路线, 免改系统分区, 稳定且可卸载.
