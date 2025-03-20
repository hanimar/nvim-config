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
				},
				custom_highlights = function(colors)
					local u = require("catppuccin.utils.colors")
					return {
						CursorLineNr = { bg = u.blend(colors.overlay0, colors.base, 0.75), style = { "bold" } },
						CursorLine = { bg = u.blend(colors.overlay0, colors.base, 0.45) },
						LspReferenceText = { bg = colors.surface2 },
						LspReferenceWrite = { bg = colors.surface2 },
						LspReferenceRead = { bg = colors.surface2 },
					}
				end,
			}
			-- vim.cmd("colorscheme catppuccin-mocha")
			vim.cmd("colorscheme catppuccin-latte")
		end,
		enabled = true,
	},
}
