-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- インサートモードで jj を入力すると ESC とみなす
vim.keymap.set("i", "jj", "<Esc>", { silent = true })
