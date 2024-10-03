return {
	{
		"jmbuhr/otter.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function ()
			require("otter").setup{}
		end,
	},
	{
		"GCBallesteros/jupytext.nvim",
		config = function ()
			require("jupytext").setup{
				custom_language_formatting = {
					python = {
						extension = "md",
						style = "markdown",
						force_ft = "markdown", -- you can set whatever filetype you want here
					},
				}
			}
		end,
		lazy = false,
	},
}
