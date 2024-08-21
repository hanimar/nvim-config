local telescope = require("telescope")

telescope.setup{
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			cas_mode = "smart_case",
		},
	},
	pickers = {},
	defaults = require("telescope.themes").get_dropdown(),
}

telescope.load_extension("fzf")

local function on_attach(client, buffnr)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gD", "<cmd>Telescope lsp_type_definitions<CR>", opts)
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
end

return {
	on_attach = on_attach,
}
