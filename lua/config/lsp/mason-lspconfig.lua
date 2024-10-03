require("mason").setup{}
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, buffnr)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gD", "<cmd>Telescope lsp_type_definitions<CR>", opts)
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
	vim.api.nvim_buf_set_keymap(buffnr, "n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
	if client.server_capabilities.inlayHintProvider then
		vim.lsp.inlay_hint.enable(true)
	end
end

mason_lspconfig.setup{
	ensure_installed = {
		"lua_ls", --lua
		"clangd", --c/c++
		"neocmake", --cmake
		"cssls", --css
		"dockerls", --docker
		"html", --html
		"jsonls", --json
		"texlab", --latex
		"pyright", --python
		"hyprls", -- hyprlang
		"rust_analyzer", -- rust
		"ts_ls", -- javascript
	}
}

mason_lspconfig.setup_handlers {
	function(server_name) --default handler
		lspconfig[server_name].setup{
			capabilities = capabilities,
			on_attach = on_attach,
			telemetry = { enable = false }
		}
	end,

	--dedicated handlers

	--[name] = function()
	--	setup
	--end,

	[ "lua_ls" ] = function()
		lspconfig["lua_ls"].setup{
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = { enable = false }
				}
			}
		}
	end,
	[ "neocmake" ] = function()
		lspconfig["neocmake"].setup{
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				cmd = { "neocmakelsp", "--stdio" },
				filetypes = { "cmake", "CMakeLists.txt" },
				single_file_support = true,
			}
		}
	end,
}
