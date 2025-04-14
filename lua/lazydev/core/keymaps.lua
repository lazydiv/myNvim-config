-- set leader key to space
vim.g.mapleader = " "

-- Add a custom keybinding to toggle the colorscheme
-- vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>ou",
-- 	":<Cmd>silent /home/lazydev//.config/nvim/lua/lazydev/Scripts/openUrls.sh <cfile><CR>",
-- 	{ noremap = true, silent = true }
-- )

-- vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")

-- vim.api.nvim_set_keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)

-- vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")
-- vim.keymap.set("v", "gx", "<esc>:URLOpenUnderCursor<cr>")
-- vim.keymap.set("n", "gx", "<Cmd>silent !xdg-open <cfile><CR>", { noremap = true, silent = true })

vim.keymap.set(
	"v",
	"<leader>o",
	":'<,'>! grep  -Eo 'https?://[a-zA-Z0-9./_-]+|[a-zA-Z0-9.-]+(/[a-zA-Z0-9./_-]+)?' | xargs -n 1  xdg-open &>/dev/null <CR>",
	{ noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>o", "<esc>:URLOpenUnderCursor<cr>")

-- vim.keymap.set("v", "<leader>o", ":'<,'>w !xargs -n 1 xdg-open<CR>", { noremap = true, silent = true })

-- Function to apply plugin logic to a line

-- Function to process every selected line
-- use plugin function on line text variable read docs bitch
-- vim.keymap.set("v", "<leader>o", function()
--   -- Get the start and end lines of the visual selection
--   local start_line, start_col = vim.fn.getpos("'<")[2], vim.fn.getpos("'<")[3]
--   local end_line, end_col = vim.fn.getpos("'>")[2], vim.fn.getpos("'>")[3]
--
--   -- Iterate through the lines in the selection
--   for line_num = start_line, end_line do
--     -- Get the text of the current line
--     local line_text = vim.fn.getline(line_num)
--
--     -- Apply the plugin function to the line
--
--   end
-- end,

-- Bind the function to a key, e.g., `<leader>p`
-- vim.api.nvim_set_keymap("v", "<leader>p", ":lua process_visual_selection()<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<A-o>", "<C-i>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- terminal shit
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")
vim.keymap.set("t", "<tab>", "<C-\\><C-N><cmd>tabn<CR>")
-- vim.keymap.set("t", "<A-h>", [[<C-\><C-N><C-w>h]])
-- vim.keymap.set("t", "<A-j>", [[<C-\><C-N><C-w>j]])
-- vim.keymap.set("t", "<C-j>", [[<C-\><C-N><C-w>j]])
-- vim.keymap.set("t", "<A-k>", [[<C-\><C-N><C-w>k]])
-- vim.keymap.set("t", "<C-k>", [[<C-\><C-N><C-w>k]])
-- vim.keymap.set("t", "<A-l>", [[<C-\><C-N><C-w>l]])
-- vim.keymap.set("n", "<C-/>", "<Cmd>ToggleTerm")
vim.keymap.set("t", "<A-/>", "<Cmd>ToggleTerm <CR>")
-- vim.keymap.set("t", "<C-A-/>", "<cmd>ToggleTerm")
-- vim.keymap.set("t", "<A-/>", "<cmd>ToggleTerm")

vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
vim.keymap.set("t", "jk", [[<C-\><C-n>]])
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- move in line's wrap not in next line
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("v", "j", "gj")
vim.keymap.set("v", "k", "gk")

-- vim.keymap.set("n", "<leader>vwm", function()
-- 	require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
-- 	require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- deleting without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader><shift>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
-- window management

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>rr", "<cmd>tabnew|read !grep -Hnr 'Self'<CR>")
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Debugging shortcuts

keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add breakpoint at line" })
keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or Continue Debugging" })
