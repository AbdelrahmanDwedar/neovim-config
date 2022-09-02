-- Options
vim.o.number = true
vim.o.tabstop = 4
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.shiftwidth = 2
vim.o.relativenumber = true
vim.opt.mouse = "a"
vim.cmd([[set splitbelow splitright]])
vim.cmd([[set encoding=utf8]])
-- vim.cmd([[set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete 11]])

-- plugins
require('plugin')
require('colorscheme')
require('nvim-autopairs').setup {}
require('shortcuts')
