local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'http://github.com/tpope/vim-surround' -- Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' -- For Commenting gcc & gc
Plug 'wakatime/vim-wakatime' -- wakatime watcher
Plug 'ryanoasis/vim-devicons' -- vim dev icons
Plug 'nvim-lualine/lualine.nvim' -- lua status bar
Plug 'https://github.com/neoclide/coc.nvim'  -- Auto Completion
Plug 'https://github.com/rafi/awesome-vim-colorschemes' -- RetPro Scheme
Plug 'https://github.com/ap/vim-css-color' -- CSS Color Preview
Plug 'https://github.com/tc50cal/vim-terminal' -- Vim Terminal
Plug 'https://github.com/windwp/nvim-autopairs.git/' -- auto close brackets nd qoutes
Plug 'andweeb/presence.nvim' -- discord presence for NeoVim
Plug 'mattn/emmet-vim' -- emmet plugin
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' -- Telescope for navigating in the app
Plug 'kyazdani42/nvim-web-devicons' -- optional, for file icons for nvim tree
Plug 'kyazdani42/nvim-tree.lua' -- nvim tree

vim.call('plug#end')

require('plugins/lualine')
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "t", action = "tabnew" },
        { key = "s", action = "split" }
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
require('nvim-autopairs').setup {}

require('plugins/presence')
require("presence"):setup(
  presence_setup
)

