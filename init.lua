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
