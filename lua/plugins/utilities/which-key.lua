require("config.commands.smart-splits")

return {
	"folke/which-key.nvim",
	events = "VeryLazy",
	config = function()
		local wk = require("which-key")

		wk.add({
			{ ">", ">gv", mode = "v" },
			{ "<", "<gv", mode = "v" },

			{ "<leader>?", function() wk.show({ global = false }) end, mode = "n", desc = "Buffer local keymaps (which-key)" },

			{ "<leader>f", group = "file" },
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", mode = "n", desc = "Find files" },
			{ "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", mode = "n", desc = "Find hidden files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", mode = "n", desc = "Live grep" },
			{ "<leader>ft", "<cmd>NvimTreeToggle<cr>", mode = "n", desc = "Toggle tree" },

			{ "<leader>p", group = "palette" },
			{ "<leader>pc", "<cmd>Telescope commands<cr>", mode = { "n", "v" }, desc = "Command palette" },
			{ "<leader>pa", "<cmd>Telescope autocommands<cr>", mode = { "n", "v" }, desc = "Autocommand palette" },
			{ "<leader>pk", "<cmd>Telescope keymaps<cr>", mode = { "n", "v" }, desc = "Keymaps palette" },

			{ "<leader>l", group = "LSP and completion" },
			{ "<leader>lm", "<cmd>lua vim.diagnostic.open_float(0, { scope = 'line' })<cr>", mode = "n", desc = "Show lsp message" },
			{ "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<cr>", mode = "n", desc = "Show info" },
			{ "<leader>lr", ":IncRename ", mode = "n", desc = "Rename" },

			{ "<leader>t", group = "tabline" },
			{ "<leader>ta", "<cmd>tabnew<cr>", mode = "n", desc = "Add tab" },
			{ "<leader>td", "<cmd>tabclose<cr>", mode = "n", desc = "Close tab" },
			-- buf navigation
			{ "<leader><Right>", "<cmd>bnext<cr>", mode = "n", desc = "Next buffer" },
			{ "<leader><Left>", "<cmd>bprev<cr>", mode = "n", desc = "Prev buffer" },

			{ "<leader>r", "<cmd>ResizeMode<cr>", mode = "n", desc = "Start resize mode" },
		})
	end,
}
