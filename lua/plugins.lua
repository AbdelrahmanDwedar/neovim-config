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

  use {
	'mg979/vim-visual-multi'
  }

  -- === #### NeoVim plugins #### === --

  -- lua status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup {} 
    end
  }

  -- lsp support (languages support protocol)
  use {
    'neovim/nvim-lspconfig'
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

  -- NeoVim Tree written in lua
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        hijack_cursor = true,
        view = {
          adaptive_size = true,
          centralize_selection = false,
          mappings = {
            list = {
              { key = "u", action = "dir_up" },
              { key = "t", action = "tabnew" },
              { key = "s", action = "split" },
              { key = "v", action = "vsplit" },
              { key = "C", action = "cd" }
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

  -- Markdown preview
  use {
    'iamcco/markdown-preview.nvim', 
    run = 'cd app && yarn install', 
    cmd = 'MarkdownPreview'
  }

  -- use {
  --   'romgrk/barbar.nvim',
  --   requires = {
  --     'kyazdani42/nvim-web-devicons',
  --   }
  -- }

  -- For Commenting gcc & gc
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function() require("nvim-surround").setup() end
  })

end)

