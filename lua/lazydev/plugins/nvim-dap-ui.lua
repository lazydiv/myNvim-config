return {
	"rcarriga/nvim-dap-ui",
	event = "VeryLazy",
	dependencies = "mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		local dapui = require("dap.ui")
		require("dapui").setup()
		dap.listeners.after.initialize["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end
	end,
}
