-- bootstrap lazy.nvim
require("config.lazy")

-- オプション設定（実行部分）
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 10
vim.opt.clipboard = "unnamedplus"

-- 色の設定
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2e3440" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#2e3440" })
vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#5c6370", italic = true })

-- キーマップ
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- 「Space + d」で現在のファイルのエラー一覧を開く
vim.keymap.set("n", "<leader>d", function()
  Snacks.picker.diagnostics({ filter = { buf = 0 } })
end, { desc = "Document Diagnostics" })

-- ※ return { ... } はここから削除します
