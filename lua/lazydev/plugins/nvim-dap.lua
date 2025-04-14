return {
	"leoluz/nvim-dap-go",
	ft = "go",
	dependencies = "mfussenegger/nvim-dap",
	config = function(_, opts)
		require("dap-go").setup(opts)

		local keymap = vim.keymap

		keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add breakpoint at linne" })

		vim.keymap.set("n", "<leader>dus", function()
			local widgets = require("dap.ui.widgets")
			local sidebar = widgets.sidebar(widgets.scopes)
			sidebar.open()
		end, { desc = "open debug sidebar" })

		vim.keymap.set("n", "<leader>dgt", function()
			require("dap-go").debug_test() -- debug go test
		end, { desc = "debug go test" })

		vim.keymap.set("n", "<leader>dgl", function()
			require("dap-go").debug_last() -- debug last go test
		end, { desc = "debug last go test" })

		local dap = require("dap")
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "127.0.0.1",
			port = 8123,
			executable = {
				command = "js-debug-adapter",
			},
		}
		for _, langu in ipairs("typescript", "javascript") do
			dap.configurations[langu] = {

				type = "pwa-node",
				request = "launch",
				name = "launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
				runtimeExecutable = "node",
			}
		end
	end,
}
