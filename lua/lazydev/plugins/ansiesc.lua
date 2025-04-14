return {
	"powerman/vim-plugin-AnsiEsc",
	config = function()
		vim.cmd([[au BufReadPost * :AnsiEsc]])
	end,
}
