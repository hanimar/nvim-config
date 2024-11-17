return {
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup(
				{ "*", },
				{
					RGB      = true, -- #RGB hex codes
					RRGGBB   = true, -- #RRGGBB hex codes
					names    = true, -- "Name" codes like Blue
					RRGGBBAA = true, -- #RRGGBBAA hex codes
					rgb_fn   = true, -- CSS rgb() and rgba() functions
					hsl_fn   = true, -- CSS hsl() and hsla() functions
					css      = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn   = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
					-- Available modes: foreground, background
					mode     = 'background', -- Set the display mode.
				}
			)
		end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
		config = function()
			local rainbow_delimiters = require("rainbow-delimiters")
			require("rainbow-delimiters.setup").setup {
				strategy = {
					[''] = rainbow_delimiters.strategy['global'],
					vim = rainbow_delimiters.strategy['local'],
				},
				query = {
					[''] = 'rainbow-delimiters',
					lua = 'rainbow-blocks',
				},
				priority = {
					[''] = 110,
					lua = 210,
				},
				highlight = {
					'RainbowDelimiterRed',
					'RainbowDelimiterYellow',
					'RainbowDelimiterBlue',
					'RainbowDelimiterOrange',
					'RainbowDelimiterGreen',
					'RainbowDelimiterViolet',
					'RainbowDelimiterCyan',
				},
			}
		end,
	}
}
