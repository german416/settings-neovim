return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    keymaps = {
      ["g?"] = "actions.show_help", -- Show help
      ["<CR>"] = "actions.select", -- Select entry
      ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" }, -- Open entry in vertical split
      ["<C-d>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" }, -- Open entry in horizontal split
      ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" }, -- Open entry in new tab
      ["<C-p>"] = "actions.preview", -- Preview entry
      ["<C-c>"] = "actions.close", -- Close oil.nvim
      ["<C-l>"] = "actions.refresh", -- Refresh oil.nvim
      ["-"] = "actions.parent", -- Go to parent directory
      ["_"] = "actions.open_cwd", -- Open current working directory
      ["`"] = "actions.cd", -- Change directory
      ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" }, -- Change directory for the current tab
      ["gs"] = "actions.change_sort", -- Change sorting method
      ["gx"] = "actions.open_external", -- Open entry with external application
      ["g."] = "actions.toggle_hidden", -- Toggle hidden files
      ["g\\"] = "actions.toggle_trash", -- Toggle trash
    },
    use_default_keymaps = false, -- Do not use default key mappings
  },
  -- Optional dependencies
  dependencies = {
    -- { "echasnovski/mini.icons", opts = {} },
    { "nvim-tree/nvim-web-devicons" },
  },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
