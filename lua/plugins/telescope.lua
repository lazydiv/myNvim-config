return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		end,
	},
	setup = {
		defaults = {
			layout_config = {
				bottom_pane = {
					height = 25,
					preview_cutoff = 120,
					prompt_position = "top",
				},
				center = {
					height = 0.4,
					preview_cutoff = 40,
					prompt_position = "top",
					width = 0.5,
				},
				cursor = {
					height = 0.9,
					preview_cutoff = 40,
					width = 0.8,
				},
				horizontal = {
					height = 0.9,
					preview_cutoff = 80,
					prompt_position = "bottom",
					width = 0.8,
				},
				vertical = {
					height = 0.9,
					preview_cutoff = 80,
					prompt_position = "bottom",
					width = 0.8,
				},

				-- other layout configuration here
			},
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
