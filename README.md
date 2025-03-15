# 💤 LazyVim Custom Configuration

This repository contains my custom configuration for [LazyVim](https://github.com/LazyVim/LazyVim).

## Installation

To use this configuration, clone the repository and follow the instructions provided in the LazyVim documentation for setting up the configuration.

```sh
git clone https://github.com/lazydiv/myNvim-config.git ~/.config/nvim

```
Custom Plugins
Here is a list of custom plugins that I use in my LazyVim configuration:

LazyVim/LazyVim

Adds LazyVim and imports its plugins
Repository Link
folke/lazy.nvim

Bootstrap lazy.nvim, a modern plugin manager for Neovim
Repository Link
Configuration
Below are some of the custom configurations and key mappings I use:

Key Mappings
o: Creates a new line below and guesses indent
O: Creates a new line above and guesses indent
Settings
Set the default shell to PowerShell
Set the default font to "FiraCode Nerd Font:h12"
Enable smart indentation with specific tab settings
Set colorscheme to "catppuccin"
Ensure nvim-cmp is loaded early
Initialization

```lua
-- Bootstrap lazy.nvim, LazyVim, and your plugins
require("config.lazy")

-- Set the default shell to PowerShell
vim.opt.shell = "pwsh"

-- Set the default font
vim.opt.guifont = "FiraCode Nerd Font:h12"

-- Ensure nvim-cmp is loaded early to prevent "module 'cmp' not found" error
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    pcall(require, "cmp")
  end,
})

-- Set colorscheme
vim.cmd.colorscheme("catppuccin")

-- Enable smart indentation
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true -- Use spaces instead of tabs (optional)
vim.opt.shiftwidth = 2 -- Number of spaces to use for autoindent (adjust as needed)
vim.opt.tabstop = 2 -- Number of spaces a tab counts for (adjust as needed)
vim.opt.softtabstop = 2 -- Number of spaces for Tab key (adjust as needed)
vim.api.nvim_set_keymap("n", "o", "o<cmd>GuessIndent<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "O", "O<cmd>GuessIndent<CR>", { noremap = true, silent = true })

-- Set tab width to 4 spaces for the current buffer
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = true
vim.opt_local.autoindent = true
vim.opt_local.smarttab = true
vim.cmd("syntax on")
```

Lazy Configuration
```Lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false, 
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
```

Usage
To start using the configuration, open Neovim:

```sh
nvim
```
Refer to the LazyVim documentation for further usage instructions and customization options.
