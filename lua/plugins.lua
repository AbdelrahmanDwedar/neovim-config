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

  use {
    'nvim-telescope/telescope-fzf-native.nvim', 
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
  }

  use {
    'kdheepak/tabline.nvim',
    config = function()
      require'tabline'.setup {
          enable = true,
          options = {
            show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
            show_devicons = true, -- this shows devicons in buffer section
            show_filename_only = true, -- shows base filename only instead of relative path in filename
            modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
            show_tabs_only = true, -- this shows only tabs instead of tabs + buffers
            section_separators = {'', ''},
            component_separators = {'', ''},
          }
      }
      -- vim.cmd[[
      --   set guioptions-=e " Use showtabline in gui vim
      --   set sessionoptions+=tabpages,globals " store tabpages and globals in session
      -- ]]
    end,
    requires = { 
      {'kyazdani42/nvim-web-devicons', opt = true} 
    }
  }

end)

