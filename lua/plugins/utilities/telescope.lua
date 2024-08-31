return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make"
		}
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup{
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					cas_mode = "smart_case",
				},
			},
			pickers = {},
			defaults = require("telescope.themes").get_dropdown(),
		}

		telescope.load_extension("fzf")
	end,
}
