return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/lsp-status.nvim",
		"tiagovla/scope.nvim",
	},
	config = function()
		require("scope").setup{}
		require("lualine").setup{
			extensions = {
				"fzf",
				"lazy",
				"nvim-tree",
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_y = {'progress', 'location'},
				lualine_z = {'require("lsp-status").status()'}
			},
			tabline = {
				lualine_a = {'buffers'},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {'tabs'},
			}
		}
	end,
}
