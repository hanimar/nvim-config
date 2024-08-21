local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

require("cmp")
local capabilities = require("config.nvim-cmp").capabilities

require("telescope")
local on_attach = require("config.telescope").on_attach

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
