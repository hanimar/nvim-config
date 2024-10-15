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
				config = function ()
					require("luasnip.loaders.from_vscode").lazy_load()
					require("luasnip.loaders.from_snipmate").load({paths = "./snippets"})
				end
			},
		},
		"saadparwaiz1/cmp_luasnip",
		"kdheepak/cmp-latex-symbols",
	},
	event = { "InsertEnter", "CmdlineEnter" },
	config = function()
		require("config.lsp.nvim-cmp")
	end,
}
