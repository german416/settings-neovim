-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>o", "<cmd>Oil<cr>", { desc = "Open Oil" })
map("n", "<leader>O", "<cmd>Oil --float<cr>", { desc = "Open Oil in floating mode" })
