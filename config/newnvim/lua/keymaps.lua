
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
vim.api.nvim_set_keymap("n", "<leader><CR>", ":nohlsearch<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", ":bn<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", ":bp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-q>", ":bd<CR>", {noremap = true, silent = true})


vim.api.nvim_set_keymap("n", "<leader>ei", ":e ~/software/config/nvim/init.vim<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "so", ":only<CR>", {noremap = true, silent = true})

-- tb
vim.api.nvim_set_keymap("n", "tb", ":TagbarToggle<CR>", {noremap = true, silent = true})

-- telescope
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", {noremap = true, silent = true})

-- nvimrc
vim.api.nvim_set_keymap("n", "tp", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "tc", ":NvimTreeClose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "ti", ":NvimTreeFindFile<CR>", {noremap = true, silent = true})

-- fterm
vim.keymap.set('n', 'tt', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', 'tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
