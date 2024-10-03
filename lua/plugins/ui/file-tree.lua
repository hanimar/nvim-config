return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		require("nvim-tree").setup{
			filters = {
				dotfiles = true,
			},
			actions = {
				open_file = {
					window_picker = {
						enable = true,
					},
				},
			},
		}
		if vim.fn.argc(-1) == 0 then
			vim.cmd("NvimTreeFocus")
		end
	end,
}
