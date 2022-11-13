-- -==*==- Options -==*==- --
local opt = vim.opt
local o = vim.o

-- General
opt.clipboard = 'unnamedplus'
opt.termguicolors = true
opt.backup = false
opt.swapfile = false

-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.smarttab = true
opt.smartindent = true
opt.expandtab = false
opt.shiftwidth = 4
opt.autoindent = true

-- numbers
opt.number = true
opt.relativenumber = true

-- UX 
opt.spell = true
opt.mouse = "a"
o.foldmethod = "syntax"

-- styling
opt.hlsearch = false
opt.hidden = true
opt.wrap = false
opt.scrolloff = 7
opt.wildmode = {'longest', 'list', 'full'}
opt.splitbelow = true
opt.splitright = true
opt.fileencoding = "utf-8"
opt.cursorline = true
opt.cursorlineopt = "number"
opt.signcolumn     = "auto:3"
