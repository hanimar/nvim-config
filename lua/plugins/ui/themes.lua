return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function ()
			vim.cmd("colorscheme base16-catppuccin-mocha")
			-- local col = require("base16-colorscheme").colors.base04
			-- vim.api.nvim_set_hl(0, "Comment", { fg = col })
			-- vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
		end
	},
}
