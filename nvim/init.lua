-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- 有効化
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- 色のカスタマイズ（例：背景色を少し変える）
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2e3440" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#2e3440" })

-- init.lua
vim.opt.timeoutlen = 500 -- キーシーケンスの待機時間
vim.opt.ttimeoutlen = 10 -- キーコード（Escなど）の待機時間を短くして反応を速くする

-- クリップボードをOSと同期
vim.opt.clipboard = "unnamedplus"
-- インレイヒントの色を調整する例（灰色にするなど）
vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#5c6370", italic = true })
