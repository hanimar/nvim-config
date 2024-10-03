return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter")
		local treesitter_configs = require("nvim-treesitter.configs")

		---@diagnostic disable: missing-fields
		treesitter_configs.setup{
			ensure_installed = {
				"c",
				"lua",
				"cpp",
				"python",
				"cmake",
				"comment",
				"css",
				"json",
				"latex",
				"dockerfile",
				"html",
				"markdown",
				"markdown_inline",
				"regex",
				"hyprlang",
			},
			sync_install = false,
			ignore_install = {},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-n>",
					node_incremental = "<C-n>",
					scope_incremental = "<C-s>",
					node_decremental = "<C-q>",
				},
			},
		}
	end,
}
