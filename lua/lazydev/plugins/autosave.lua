return {
	"pocco81/auto-save.nvim",
	event = { "InsertLeave", "TextChanged" },
	config = function()
		require("auto-save").setup({
			enabled = true,
			execution_message = { enabled = false }, -- Disable save messages
			events = { "InsertLeave", "TextChanged" },
			conditions = {
				exists = true,
				modifiable = true,
			},
			write_all_buffers = false,
			debounce_delay = 200, -- Save delay in milliseconds
			callback = function()
				vim.cmd("silent! w") -- Force save without asking
			end,
		})
	end,
}
