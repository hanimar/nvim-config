return {
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup{}
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup{}
		end,
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		config = function()
			require('tiny-inline-diagnostic').setup{}
			vim.diagnostic.config{ virtual_text = false }
		end,
	},
	{
		"aznhe21/actions-preview.nvim",
		config = function ()
			require("actions-preview").setup{
				backend = { "telescope", "nui" },
				telescope = {
					layout_strategy = "vertical",
				}
			}
		end,
	},
}
