return {
	{
		"quarto-dev/quarto-nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			{
				"jmbuhr/otter.nvim",
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
								extension = "qmd",
								style = "quarto",
								force_ft = "quarto", -- you can set whatever filetype you want here
							},
						}
					}
				end,
				lazy = false,
			},
		},
		config = function ()
			require("quarto").setup{}
		end,
	},
}
