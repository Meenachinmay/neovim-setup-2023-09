vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap

vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", ':Format<cr>')
vim.keymap.set("n", "<leader>F", ':FormatWrite<cr>')

-- split window
vim.keymap.set('n','ss', ':split<Return><C-w>w')
vim.keymap.set('n','sv', ':vsplit<Return><C-w>w')

-- Move window
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')

vim.keymap.set('n', '<leader>e', ':NERDTreeToggle<cr>')
vim.keymap.set('n', '<leader>q', ':q<cr>')
vim.keymap.set('n', '<leader>wq', ':wq<cr>')

