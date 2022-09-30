-- Plugins managing by packer.nvim 

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- === #### Native vim plugins ### === ---

  -- Surrounding ysw)
  use {
    'tpope/vim-surround'
  }

  -- For Commenting gcc & gc
  use {
    'tpope/vim-commentary'
  }

  -- wakatime watcher
  use {
    'wakatime/vim-wakatime'
  }

  -- awesome vim colorschemes
  use {
    'rafi/awesome-vim-colorschemes'
  }

  -- vim css colors highlighting
  use {
    'ap/vim-css-color'
  }

  use {
    'mattn/emmet-vim'
  }

  -- === #### NeoVim plugins #### === --

  -- lua status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require('lualine').setup {} end
  }

  -- Coc intelligence 
  use {
    'neoclide/coc.nvim',
    run = 'yarn install'
  }

  -- auto conpletion for `"({[ etc..
  use {
  	"windwp/nvim-autopairs",
    config = function() 
      require("nvim-autopairs").setup {} 
    end
  }
  -- discord presence for neovim
  use {
    'andweeb/presence.nvim',
    config = function() 
      require('presence'):setup({
        auto_update = true,
        neovim_image_text = "NeoVim",
		main_image = "neovim",
		client_id = "793271441293967371", -- Use your own Discord application client id (not recommended)
		log_level = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
		debounce_timeout = 10,
		enable_line_number = false,
		blacklist = {},
		buttons = false,

		-- Rich Presence text options
		editing_text = "Editing %s",
		file_explorer_text = "Browsing %s",
		git_commit_text = "Committing changes",
		plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
		reading_text = "Reading %s",
		workspace_text = "Project: %s",
      })
    end
  }
  
  -- Telescope for navigation
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
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
          dotfiles = false,
          custom = {
            '.git'
          },
        },
      })
    end
  }

  use {
    'norcalli/nvim-terminal.lua',
    config = function()
      require('terminal').setup()
    end
  }

  -- Markdown preview
  use {
    'iamcco/markdown-preview.nvim', 
    run = 'cd app && yarn install', 
    cmd = 'MarkdownPreview'
  }

end)

