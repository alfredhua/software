local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

map('n','<Space>','<NOP>',default_opts);

vim.g.mapleader=' '

map('n', '<leader>s', ':w<CR>', default_opts)
map('n', '>', '>>', default_opts)
map('n', 'P', '\"+p', default_opts)
map('n', 'Y', '"+y', default_opts)
map('n', 'Q', ':q<CR>', default_opts)
map('n', '<C-a>', '<ESC>A', default_opts)
map('n', '<C-s>', ':w<CR>', default_opts)
map('n', '<C-j>', ':bn<CR>', default_opts)
map('n', '<C-k>', ':bp<CR>', default_opts)
map('n', 'M', 'J', default_opts)
map('n', 'K', '5k', default_opts)
map('n', 'L', '5l', default_opts)
map('n', 'J', '5j', default_opts)
map('n', 'N', '0', default_opts)



map('n', 'sf', ':Files<CR>', default_opts)


