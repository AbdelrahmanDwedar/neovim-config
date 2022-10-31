local opts = { noremap = true, silent = true }
local nor = { noremap = true, silent = false }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--==## Normal mode ##==--
-- General shortcuts

-- nvim tree (lua) fast access shortcuts 
keymap('n', '<Leader>e', ":NvimTreeToggle<CR>" , opts)
keymap('n', '<Leader>f', ":NvimTreeFocus<CR>" , opts)

-- Telescope
keymap('n', '<Leader>t', ':Telescope ', nor)

-- vim multi corsur
keymap('n', '<C-c>', ':VMClear<CR>', opts)

-- Splits --
-- Splits moving with ctrl + hjkl shortcuts
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
keymap('n', '<C-=>', '<C-w>=', opts)
-- Split resizing
keymap('n', '<C-Left>', ':vertical resize +3<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize -3<CR>', opts)
keymap('n', '<C-Up>', ':resize +3<CR>', opts)
keymap('n', '<C-Down>', ':resize -3<CR>', opts)

-- Tabs shortcuts 
keymap('n', 'rt', ':tabclose<CR>', opts)
keymap('n', 'tf', ':tabfind ', opts)

-- Paste without counting the deleted values
keymap('n', '"p', '"0p', opts)

-- add semicolon in the end
keymap('n', '<Leader>;', 'A;<Esc>', opts)
-- keymap('n', '<C-Semicolon>', 'A;', opts)

-- arrows for gj & gk (when using warping mode)
keymap('n', '<Down>', 'gj', opts)
keymap('n', '<Up>', 'gk', opts)

-- selecting last change
keymap('n', 'gV', '`[v`]', opts)

-- use diff mode with one keymap 
keymap('n', '<Leader><Leader>d', ':windo diffthis<CR>', opts)

--==## Insert mode ##==--
keymap('i', '<C-BS>', '<C-w>', opts) -- remove a word backwards

--==## Visual mode ##==--
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--==## Visual Block mode ##==--
-- Move text up and down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--==## Multi modes ##==--
-- Files finding with Telescope
keymap({ 'n', 'i' }, '<C-p>', '<Esc>:Telescope find_files<CR>', opts)

-- new line
keymap({ 'n', 'i' }, '<C-Enter>', '<Esc>o', opts)

-- Move text up and down
keymap({ "n", "v" }, "<A-j>", ":m .+1<CR>==", opts)
keymap({ "n", "v" }, "<A-k>", ":m .-2<CR>==", opts)
