-- Plugins managing by packer.nvim 

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source "afile" | PackerCompile
  augroup end
]])

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- === #### Native vim plugins ### === ---

  -- wakatime watcher
  use 'wakatime/vim-wakatime'

  -- awesome vim colorschemes
  use 'rafi/awesome-vim-colorschemes'

  use 'mg979/vim-visual-multi'

  -- === #### NeoVim plugins #### === --

  -- lsp
  use {
	"neovim/nvim-lspconfig",
	requires = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"jose-elias-alvarez/null-ls.nvim"
	}
  }

  use {
	  "hrsh7th/nvim-cmp",
	  requires = {
		  "hrsh7th/cmp-buffer",
		  "hrsh7th/cmp-path",
		  "hrsh7th/cmp-nvim-lsp",
		  "hrsh7th/cmp-nvim-lua"
	  }
  }

  use "nvim-treesitter/nvim-treesitter"

  use "lewis6991/gitsigns.nvim"

  -- lua status bar
  use { 
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require('lualine').setup {} end
  }

  use {
  	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  -- discord presence for neovim
  use 'andweeb/presence.nvim'

  -- Telescope for navigation
  use {
    'nvim-telescope/telescope.nvim',
	requires = 'nvim-lua/plenary.nvim'
  }

  -- NeoVim Tree written in lua
  use {
    'kyazdani42/nvim-tree.lua',
	requires = 'kyazdani42/nvim-web-devicons',
  }

  -- For Commenting gcc & gc
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function() require("nvim-surround").setup() end
  })

  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require'colorizer'.setup() end
  }

end)

