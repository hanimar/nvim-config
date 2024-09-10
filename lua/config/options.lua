-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- center cursor
vim.o.scrolloff = 20

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
