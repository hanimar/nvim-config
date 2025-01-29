return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup {
				integrations = {
					diffview = true,
					mason = true,
					noice = true,
					cmp = true,
					native_lsp = {
						enabled = true,
					},
					nvimtree = true,
					treesitter = true,
					telescope = true,
					lsp_trouble = true,
					which_key = true,
					rainbow_delimiters = true,
				}
			}
			vim.cmd("colorscheme catppuccin-mocha")
		end,
		enabled = true,
	},
}
