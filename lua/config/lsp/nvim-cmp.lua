local cmp = require("cmp")
local luasnip = require("luasnip")

vim.opt.completeopt = { "menu", "menuone", "noselect" }

cmp.setup{
	mapping = cmp.mapping.preset.insert{
		["<CR>"] = cmp.mapping({
			i = function(fallback)
				if cmp.visible() and cmp.get_active_entry() then
					cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = false })
				else
					fallback()
				end
			end,
			s = cmp.mapping.confirm({ select = true }),
			c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
		}),
		["<Down>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end),
		["<Up>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end),
		["<Esc>"] = cmp.mapping.abort(),
		["<C-Space>"] = cmp.mapping.complete(),
		["<Tab>"] = cmp.mapping(function (fallback)
			if luasnip.locally_jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, {"i", "s"}),
		["<S-Tab>"] = cmp.mapping(function (fallback)
			if luasnip.locally_jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {"i", "s"})
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		format = function (entry, vim_item)
			vim_item.menu = nil
			return vim_item
		end,
	},
	preselect = cmp.PreselectMode.None,
	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "luasnip" },
		{
			name = "buffer",
			keyword_length = 5,
			option = {
				indexing_interval = 1000,
			},
		},
		{ name = "path" },
		{ name = "latex_symbols" },
	},
	performance = {
		-- max_view_entries = 7,
	}
}

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline{
		["<CR>"] = cmp.mapping({
			c = function(fallback)
				if cmp.visible() and cmp.get_active_entry() then
					cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = false })
				else
					fallback()
				end
			end,
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "c" } ),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "c" } ),
	},
	sources = cmp.config.sources({
		{ name = "path" },
		{ name = "cmdline" },
	}),
})
