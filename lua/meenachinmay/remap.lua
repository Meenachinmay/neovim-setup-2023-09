vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

map('n', '<leader>h', '<C-w>h', {noremap = true, silent = false})
map('n', '<leader>l', '<C-w>l', {noremap = true, silent = false})
map('n', '<leader>j', '<C-w>j', {noremap = true, silent = false})
map('n', '<leader>k', '<C-w>k', {noremap = true, silent = false})
map('n', '<leader>w', ':w<cr>', {noremap = true, silent = false})
map('n', '<leader>q', ':q<cr>', {noremap = true, silent = false})
map('n', '<leader>wq', ':wq<cr>', {noremap = true, silent = false})
map("n", "<leader>e", ":NERDTreeToggle<cr>", {noremap = true, silent = false})
