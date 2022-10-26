local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--==## Normal mode ##==--
-- General shortcuts
keymap('n', '<C-Enter>', '<Esc>o', opts)

-- nvim tree (lua) fast access shortcuts 
keymap('n', '<Leader>e', ":NvimTreeToggle<CR>" , opts)
keymap('n', '<Leader>f', ":NvimTreeFocus<CR>" , opts)

-- Telescope
keymap('n', '<Leader>t', ':Telescope ', opts)
keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)

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

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

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

--==## Insert mode ##==--
-- Telescope
keymap('i', '<C-p>', '<Esc>:Telescope find_files<CR>', opts)

keymap('i', '<C-BS>', '<C-w>', opts) -- remove a word backwards
keymap('i', '<C-Enter>', '<Esc>o', opts) -- new line wherever in the line within insert mode
keymap('i', '<C-Semicolon>', "<Esc>A;", opts) -- add ; in the end of the line 

--==## Visual mode ##==--
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

--==## Visual Block mode ##==--
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

