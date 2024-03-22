return {
	{
		"nvimtools/none-ls.nvim",
		ft = "go",
		opts = function()
			return require("custom.configs.null-ls")
		end,
	},
	{
		"yanskun/gotests.nvim",
		ft = "go",
		config = function()
			require("gotests").setup()
		end,
	},
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			require("go").setup()
		end,
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
	},
	{
		"mfussenegger/nvim-dap",
		init = function()
			require("custom.mappings").dap()
		end,
	},
	{
		"leoluz/nvim-dap-go",
		ft = "go",
		dependencies = "mfussenegger/nvim-dap",
		config = function(_, opts)
			require("dap-go").setup(opts)
			require("custom.mappings").dap_go()
		end,
	},
	{
        "nvim-treesitter/nvim-treesitter-refactor"
    },
    {
        "f-person/git-blame.nvim"
    }
}
