#!/bin/bash
# 七號貨櫃官網 → GitHub Pages 部署
# 用法：直接執行 ./update.sh
set -e

REPO_DIR="$HOME/code/c7-bar"
cd "$REPO_DIR"

# 檢查有沒有變化
if [ -z "$(git status --porcelain)" ]; then
  echo "✓ 沒有變化，無需部署。"
  exit 0
fi

git add -A
git commit -m "Update: $(date '+%Y-%m-%d %H:%M')"
git push

echo ""
echo "✓ 已部署。Pages 約 1–2 分鐘後更新："
echo "  https://bethreewater.github.io/c7-bar/"
