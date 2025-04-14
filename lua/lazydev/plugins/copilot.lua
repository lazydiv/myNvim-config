return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	config = function()
		require("copilot").setup({
			suggestion = { enabled = false }, -- disable the floating suggestion since we'll use cmp
			panel = { enabled = false }, -- disable the Copilot panel
			filetypes = {
				-- Add your preferred filetypes here
				["*"] = true,
			},
		})
	end,
}
