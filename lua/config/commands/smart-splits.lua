local enter_resize_mode = function ()
	if vim.g.smart_resize_mode == true then
		return
	else
		pcall(require('smart-splits').start_resize_mode)
	end
end

vim.api.nvim_create_user_command("ResizeMode", enter_resize_mode, {})
