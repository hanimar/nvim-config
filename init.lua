require("settings.options")

require("config.lazy")
require("lazy").setup({
	spec = { { import = "plugins" }, },
	checker = { enabled = true },
})

require("settings.postinit")
