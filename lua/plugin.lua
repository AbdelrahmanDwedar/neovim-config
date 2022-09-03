local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' -- Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' -- NerdTree
Plug 'kyazdani42/nvim-tree.lua' -- nvim tree
Plug 'https://github.com/tpope/vim-commentary' -- For Commenting gcc & gc
Plug 'wakatime/vim-wakatime' -- wakatime watcher
Plug 'ryanoasis/vim-devicons' -- vim dev icons
Plug 'nvim-lualine/lualine.nvim' -- lua status bar
Plug 'https://github.com/neoclide/coc.nvim'  -- Auto Completion
Plug 'https://github.com/terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors
Plug 'https://github.com/rafi/awesome-vim-colorschemes' -- RetPro Scheme
Plug 'https://github.com/ap/vim-css-color' -- CSS Color Preview
Plug 'https://github.com/tc50cal/vim-terminal' -- Vim Terminal
Plug 'https://github.com/windwp/nvim-autopairs.git/' -- auto close brackets nd qoutes
Plug 'andweeb/presence.nvim' -- discord presence for NeoVim
Plug 'mattn/emmet-vim' -- emmet plugin

vim.call('plug#end')

require('plugins/lualine')
require("presence"):setup(
  -- require("plugins/presence.lua").presence_setup
)

