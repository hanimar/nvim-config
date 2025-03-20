-- python packages
vim.g.python3_host_prog=vim.fn.expand("/home/p1an1st/.virtualenvs/neovim/bin/python3")
-- vim.g.python_host_prog=vim.fn.expand("/home/p1an1st/.virtualenvs/neovim/bin/python")

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- center cursor
vim.o.scrolloff = 20

-- cursorline
vim.o.cursorline = true

-- case
vim.o.ignorecase = true
vim.o.smartcase = true

-- tabs
vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.shiftwidth = 4
-- vim.o.smartindent = true

-- line wrapping
vim.o.wrap = false

-- line number
vim.o.number = true
vim.o.relativenumber = true

-- tabline
vim.o.showtabline = 2

-- clipboard
vim.o.clipboard = "unnamedplus"

-- truecolor
if vim.env.COLORTERM ~= nil then
	vim.o.termguicolors = true
end

-- filetypes
vim.filetype.add{
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}
