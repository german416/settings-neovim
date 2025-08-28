return {
  -- Treesitter: resaltado avanzado
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
      },
    },
  },

  -- LSP: HTML, CSS y JS/TS
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        tsserver = {},
      },
    },
  },

  -- Mason: aseguramos que instale los LSPs
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
      },
    },
  },

  -- Formateo y linting: Prettier + ESLint
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.prettier,
        nls.builtins.diagnostics.eslint_d,
      })
    end,
  },

  -- Snippets estilo Emmet
  {
    "mattn/emmet-vim",
    ft = {
      "html",
      "css",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
    },
  },
}
