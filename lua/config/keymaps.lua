-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>o", function()
  require("oil").open(LazyVim.root())
end, { desc = "Open Oil explorer (root dir)" })

map("n", "<leader>O", function()
  require("oil").open(vim.fn.getcwd())
end, { desc = "Open Oil explorer (cwd)" })

-- map("n", "<leader>o", "<cmd>Oil <cr>", { desc = "Open Oil explorer (root dir)" })
-- map("n", "<leader>O", "<cmd>Oil <cr>", { desc = "Open Oil explorer (cwd)" })
