return {
	{
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
						case_mode = "smart_case",
					},
				},
				pickers = {},
				defaults = {
					layout_strategy = "horizontal",
					layout_config = {
						horizontal = {
							width = {padding = 0},
							height = {padding = 0},
							preview_width = 0.5,
							prompt_position = "top",
						}
					},
					sorting_strategy = "ascending",
				},
				-- defaults = require("telescope.themes").get_dropdown(),
			}

			telescope.load_extension("fzf")
			telescope.load_extension("noice")
			telescope.load_extension("scope")
		end,
	},
}
