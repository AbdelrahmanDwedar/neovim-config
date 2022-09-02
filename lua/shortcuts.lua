function nmap(shortcut, command)
  vim.api.nvim_set_keymap('n', shortcut, command, { noremap = true, silent = true })
end
-- General shortcuts
nmap('<C-Enter>', '<Esc>o')
nmap('<S-b>', '^')
nmap('<S-e>', '$')
vim.api.nvim_set_keymap('i', '<C-h>', '<C-w>', {noremap = true})
nmap('<C-m>', '<Esc>o')
nmap('<Tab>', '<C-p>')

-- NERDTree fast access shortcuts 
nmap('<C-f>', ':NERDTreeFocus<CR>')
nmap('<C-t>', ':NERDTreeToggle<CR>')
nmap('<C-n>', ':NERDTree<CR>')

-- Terminal shortcuts
nmap('tt', ':17sp|:terminal<CR>')

-- Splits --
-- Splits moving with ctrl + hjkl shortcuts
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')
nmap('<C-=>', '<C-w>=')
-- Split resizing
nmap('<C-Left>', ':vertical resize +3<CR>')
nmap('<C-Right>', ':vertical resize -3<CR>')
nmap('<C-Up>', ':resize +3<CR>')
nmap('<C-Down>', ':resize -3<CR>')

-- Tabs shortcuts 
nmap('rt', ':tabclose<CR>')
nmap('ft', ':tabfind ')