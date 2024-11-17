return {
	{
		"mrjones2014/smart-splits.nvim",
		dependencies = {
			"kwkarlwang/bufresize.nvim",
			config = function()
				require("bufresize").setup()
			end,
		},
		config = function()
			require("smart-splits").setup {
				ignored_buftypes = {
					"nofile",
					"quickfix",
					"prompt",
				},
				ignored_filetypes = { "NvimTree" },
				default_amount = 3,
				ignored_events = {
					"BufEnter",
					"WinEnter",
				},
				resize_mode = {
					silent = true,
					resize_keys = { "<Left>", "<Down>", "<Up>", "<Right>" },
					hooks = {
						on_enter = function()
							vim.notify("resize mode")
						end,
						on_leave = function()
							vim.notify("exit resize mode")
							require("bufresize").register()
						end,
					},
				},
			}
		end,
	},
}
