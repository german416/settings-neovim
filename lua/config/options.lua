-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- This only works on X11
vim.g.clipboard = {
  name = "xclip",
  copy = {
    ["+"] = "xclip -selection clipboard -in",
    ["*"] = "xclip -selection primary -in",
  },
  paste = {
    ["+"] = "xclip -selection clipboard -out",
    ["*"] = "xclip -selection primary -out",
  },
  cache_enabled = true,
}

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"

-- Disable relative line number and enable normal line number
vim.opt.relativenumber = false
vim.opt.number = true
