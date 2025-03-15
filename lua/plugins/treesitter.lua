return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "python",
        "json",
        "markdown",
        "markdown_inline",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      -- Add this configuration to properly handle Windows
      prefer_git = false,
    })

    -- If you're on Windows and using PowerShell, you might need this
    if vim.fn.has("win32") == 1 then
      require("nvim-treesitter.install").compilers = { "clang", "gcc" }
    end
  end,
}
