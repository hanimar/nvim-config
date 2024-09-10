return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		{
			"L3MON4D3/LuaSnip",
			dependencies = {
				"rafamadriz/friendly-snippets",
			},
		},
		"saadparwaiz1/cmp_luasnip",
	},
	event = { "InsertEnter", "CmdlineEnter" },
	config = function()
		require("config.lsp.nvim-cmp")
	end,
}
