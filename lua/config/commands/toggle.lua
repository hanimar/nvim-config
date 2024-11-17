local M = {}

local ch_tabwidth = function ()
	vim.ui.select(
		{"1", "2", "3", "4"},
		{
			prompt = "select tab width",
			format_item = function (val)
				return ""..val
			end
		},
		function (choice)
			if choice ~= nil then
				vim.cmd("set shiftwidth="..choice)
				vim.cmd("set tabstop="..choice)
				vim.notify("set tab width to "..choice)
			end
		end
	)
end

M.toggle_menu = function ()
	vim.ui.select(
		{
			"wrap",
			"expandtab",
			"tab width",
			"inlay hints",
		},
		{
			prompt = "Change option:",
			format_item = nil,
		},
		function (choice)
			if choice == "wrap" then
				vim.cmd("set wrap!")
				vim.notify("set wrap to "..tostring(vim.o.wrap))
			elseif choice == "expandtab" then
				vim.cmd("set expandtab!")
				vim.notify("set expandtab to "..tostring(vim.o.expandtab))
			elseif choice == "tab width" then
				ch_tabwidth()
			elseif choice == "inlay hints" then
				vim.cmd("lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())")

				vim.notify("inlay hints "..(vim.lsp.inlay_hint.is_enabled() and "enabled" or "disabled"))
			end
		end
	)
end

return M
