return {
  -- Mason for managing LSP servers, formatters, etc.
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason LSP Config integration
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      -- Setup Mason-LSPConfig
      require("mason-lspconfig").setup({
        ensure_installed = {
          "tsserver", -- TypeScript/JavaScript
          "html", -- HTML
          "cssls", -- CSS
          "jsonls", -- JSON
          "lua_ls", -- Lua
          "tailwindcss", -- Tailwind CSS
          "pyright", -- Python
        },
        automatic_installation = true,
      })
    end,
  },
}
