local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

local g=vim.g

g.tagbar_width=30
g.tagbar_right=1
g.tagbar_autoclose=1
map('n', 'tm', ':TagbarToggle<CR>', default_opts)
