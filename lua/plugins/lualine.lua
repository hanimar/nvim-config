return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/lsp-status.nvim",
	},
	config = function()
		require("config.lualine")
	end,
}
