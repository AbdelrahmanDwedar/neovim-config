-- Settings (numbers, tab, etc...)
require('settings')

vim.cmd([[set splitbelow splitright]])
vim.cmd([[set encoding=utf8]])
-- vim.cmd([[set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete 11]])

-- plugins
require('plugin') 
require('nvim-autopairs').setup {}

-- Colorscheme
require('colorscheme')

-- shortcuts
require('shortcuts')

