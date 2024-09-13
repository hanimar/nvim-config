require("config.options")

require("plugins.lazy")
require("lazy").setup({
	spec = {
		{ import = "plugins/syntax" },
		{ import = "plugins/ui" },
		{ import = "plugins/utilities" },
	},
	checker = { enabled = true },
})
