# c7-bar

七號貨櫃官網（對外）。單頁靜態，部署 GitHub Pages。

## 結構

- `index.html` — 全部內容（HTML + CSS + JS 內嵌，無依賴）
- `update.sh` — commit + push 一鍵腳本

## 編輯

直接改 `index.html`：
- 雞尾酒資料：搜尋 `const cocktails`
- 啤酒：`const beers`
- 氣泡飲：`const sodas`
- 軟性：`const softs`
- 地址 / 時間：搜尋 `<section id="visit"`

## 部署

第一次：

```bash
cd ~/code/c7-bar
git init
git add -A
git commit -m "Initial commit"
# 在 GitHub 建立 public repo: bethreewater/c7-bar
git remote add origin git@github.com:bethreewater/c7-bar.git
git branch -M main
git push -u origin main
# GitHub repo → Settings → Pages → Source: Deploy from branch (main / root)
```

之後改完：

```bash
./update.sh
```

網址：https://bethreewater.github.io/c7-bar/

## 跟內部資料的關係

對外 SSoT 在這裡（`~/code/c7-bar/index.html`）。
內部菜單 SSoT 在 vault：`Vault/40-Projects/餐飲/七號貨櫃/02-菜單與酒單/00-當前菜單.md`。

兩邊不自動同步——對外漲價/下架要手動 sync 過來。理由：對外有節奏（reissue 週期），內部隨時改。
