require("config.commands.smart-splits")
local toggle_menu = require("config.commands.toggle").toggle_menu

return {
	"folke/which-key.nvim",
	events = "VeryLazy",
	config = function()
		local wk = require("which-key")

		wk.add({
			{ "<esc>",           "<c-\\><c-n>",                                                   mode = "t" },
			{ ">",               ">gv",                                                           mode = "v" },
			{ "<",               "<gv",                                                           mode = "v" },

			{ "<leader>?",       function() wk.show({ global = true }) end,                       mode = "n",          desc = "Global keymaps (which-key)" },
			{ "<localleader>?",  function() wk.show({ global = false }) end,                      mode = "n",          desc = "Buffer local keymaps (which-key)" },

			{ "<leader>f",       group = "file" },
			{ "<leader>ff",      "<cmd>Telescope find_files<cr>",                                 mode = "n",          desc = "Find files" },
			{ "<leader>fh",      "<cmd>Telescope find_files hidden=true<cr>",                     mode = "n",          desc = "Find hidden files" },
			{ "<leader>fg",      "<cmd>Telescope live_grep<cr>",                                  mode = "n",          desc = "Live grep" },
			{ "<leader>ft",      "<cmd>NvimTreeToggle<cr>",                                       mode = "n",          desc = "Toggle tree" },

			{ "<leader>p",       group = "palette" },
			{ "<leader>pc",      "<cmd>Telescope commands<cr>",                                   mode = { "n", "v" }, desc = "Command palette" },
			{ "<leader>pa",      "<cmd>Telescope autocommands<cr>",                               mode = { "n", "v" }, desc = "Autocommand palette" },
			{ "<leader>pk",      "<cmd>Telescope keymaps<cr>",                                    mode = { "n", "v" }, desc = "Keymaps palette" },
			{ "<leader>pb",      "<cmd>Telescope buffers<cr>",                                    mode = { "n", "v" }, desc = "Buffers palette" },
			{ "<leader>pt",      toggle_menu,                                                     mode = { "n", "v" }, desc = "Options palette" },

			{ "<localleader>c",  group = "code" },
			{ "<localleader>cm", "<cmd>lua vim.diagnostic.open_float(0, { scope = 'line' })<cr>", mode = "n",          desc = "Show lsp message" },
			{ "<localleader>ch", "<cmd>lua vim.lsp.buf.hover()<cr>",                              mode = "n",          desc = "Show info" },
			{ "<localleader>cr", ":IncRename ",                                                   mode = "n",          desc = "Rename" },
			{ "<localleader>ca", "<cmd>lua require('actions-preview').code_actions()<cr>",        mode = "n",          desc = "Code actions" },
			{ "<localleader>cf", "<cmd>lua vim.lsp.buf.format()<cr>",                             mode = "n",          desc = "Format" },

			{ "<leader>T",       group = "tabs" },
			{ "<leader>Ta",      "<cmd>tabnew<cr>",                                               mode = "n",          desc = "Add tab" },
			{ "<leader>Td",      "<cmd>tabclose<cr>",                                             mode = "n",          desc = "Close tab" },
			{ "<leader>Tg",      "<cmd>Telescope telescope-tabs list_tabs<cr>",                   mode = "n",          desc = "Switch tabs" },
			-- buf navigation
			{ "<leader><Right>", "<cmd>bnext<cr>",                                                mode = "n",          desc = "Next buffer" },
			{ "<leader><Left>",  "<cmd>bprev<cr>",                                                mode = "n",          desc = "Prev buffer" },

			{ "<leader>r",       "<cmd>ResizeMode<cr>",                                           mode = "n",          desc = "Start resize mode" },
		})
	end,
}
