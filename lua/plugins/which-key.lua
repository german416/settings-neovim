return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Choose one preset:
    preset = "classic",
    -- preset = "none",
    -- preset = "modern",
    -- preset = "helix",

    -- Choose border:
    win = {
      border = "single",
      -- border = "double"
    },

    icons = {
      separator = "│",
      breadcrumb = "/",
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
