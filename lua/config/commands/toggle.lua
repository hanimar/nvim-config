local M = {}

M.toggle_menu = function ()
	vim.ui.select(
		{
			"wrap",
			"expandtab",
		},
		{
			prompt = "Change option:",
			format_item = nil,
		},
		function (choice)
			if choice == "wrap" then
				vim.o.wrap = not vim.o.wrap
			elseif choice == "expandtab" then
				vim.o.expandtab = not vim.o.expandtab
			end
		end
	)
end

return M
