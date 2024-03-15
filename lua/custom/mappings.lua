vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

local M = {}

M.dap = function()
	vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add Breakpoint at line" })
	vim.keymap.set("n", "<leader>dus", function()
		local widgets = require("dap.ui.widgets")
		local sidebar = widgets.sidebar(widgets.scopes)
		sidebar.open()
	end, { desc = "Open debugging sidebar" })
end

M.dap_go = function()
	vim.keymap.set("n", "<leader>dgt", function()
		require("dap-go").debug_test()
	end, { desc = "Debug go test" })
	vim.keymap.set("n", "<leader>dgl", function()
		require("dap-go").debug_last()
	end, { desc = "Debug go last test" })
end

return M
