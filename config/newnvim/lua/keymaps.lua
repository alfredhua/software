
vim.g.mapleader = ' '

vim.api.nvim_set_keymap("n", "<C-a>", "<ESC>A", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-[>", "<ESC>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("v", "Y", "\"+y", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "P", "\"+p", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "P", "\"+p", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "K", "5k", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "K", "5k", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "L", "5l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "L", "5l", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "H", "5h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "H", "5h", {noremap = true, silent = true})


vim.api.nvim_set_keymap("n", "J", "5j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "J", "5j", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", ">", ">>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "M", "J", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "U", "<C-r>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<LEADER><CR>", ":nohlsearch<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", ":bn<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", ":bp<CR>", {noremap = true, silent = true})


vim.api.nvim_set_keymap("n", "<LEADER>ei", ":e ~/software/config/nvim/init.vim<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "so", ":only<CR>", {noremap = true, silent = true})
