#!/bin/sh
# 每次版本更新: 一条命令发 GitHub Release(附 APK) 并推仓库.
# 用法: ./release.sh <version> <apk路径> [notes]
V="$1"; APK="$2"; NOTES="${3:-更新}"
[ -z "$V" -o -z "$APK" ] && { echo "用法: $0 <version> <apk路径> [notes]"; exit 1; }

# 1) 把最新源码/素材/文档 commit + push
git add -A
git commit -q -m "v$V: $NOTES" || true
git push -q

# 2) 发 Release(附件=APK; 已有则更新)
gh release create "$V" --title "DTS 开启器 $V" --notes "$NOTES" "$APK" 2>/dev/null \
  || gh release edit "$V" --title "DTS 开启器 $V" --notes "$NOTES"
gh release upload "$V" "$APK" --clobber 2>/dev/null || true
echo "已发 v$V: $(gh release view $V 2>/dev/null | grep -iE "^url|tag" | head -1)"
echo "download: https://github.com/phamcucpqrwbbnposhmn96-ui/dts-launcher/releases/download/$V/$(basename "$APK")"
