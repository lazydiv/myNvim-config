-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Keybindings
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save File" })        -- Save file with <Space>w
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })         -- Exit insert mode with jk
vim.keymap.set("v", "<leader>c", '"+y', { desc = "Copy to Clipboard" })   -- Copy to clipboard with <Space>c