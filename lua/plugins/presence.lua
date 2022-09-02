-- The setup config table shows all available config options with their default values:
require("presence"):setup({
    auto_update = true,
    neovim_image_text = "NeoVim", -- Text displayed when hovered over the Neovim image
    main_image = "neovim", -- Main image display (either "neovim" or "file")
    client_id = "793271441293967371", -- Use your own Discord application client id (not recommended)
	log_level = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
	debounce_timeout = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
	enable_line_number = false, -- Displays the current line number instead of the current project
	blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
	buttons = false,

	-- Rich Presence text options
	editing_text = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
	file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
	git_commit_text = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
	plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
	reading_text = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
	workspace_text      = "Project: %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
  })
