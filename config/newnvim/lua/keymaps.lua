
vim.g.mapleader = ' '

vim.keymap.set("i", "<C-a>", "<ESC>A")
vim.keymap.set("n", "<C-[>", "<ESC>")

vim.keymap.set("v", "Y", "\"+y")
vim.keymap.set("n", "P", "\"+p")
vim.keymap.set("v", "P", "\"+p")

vim.keymap.set("n", "K", "5k")
vim.keymap.set("v", "K", "5k")

vim.keymap.set("n", "L", "5l")
vim.keymap.set("v", "L", "5l")

vim.keymap.set("n", "H", "5h")
vim.keymap.set("v", "H", "5h")


vim.keymap.set("n", "J", "5j")
vim.keymap.set("v", "J", "5j")

vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "M", "J")
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "<leader><CR>", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-j>", ":bn<CR>")
vim.keymap.set("n", "<C-k>", ":bp<CR>")
vim.keymap.set("n", "<C-q>", ":bd<CR>")


vim.keymap.set("n", "<leader>ei", ":e ~/software/config/nvim/init.vim<CR>")

vim.keymap.set("n", "sv", ":vsp<CR>")
vim.keymap.set("n", "sh", ":sp<CR>")
vim.keymap.set("n", "sc", ":close<CR>")
vim.keymap.set("n", "so", ":only<CR>")

-- tb
vim.keymap.set("n", "tb", ":TagbarToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

-- nvimrc
vim.keymap.set("n", "tp", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "tc", ":NvimTreeClose<CR>")
vim.keymap.set("n", "ti", ":NvimTreeFindFile<CR>")

-- fterm
vim.keymap.set('n', 'tt', '<CMD>lua require("FTerm").toggle()<CR>')
-- vim.keymap.set('t', 'tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

vim.keymap.set('n', '<C-1>', ':BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<C-2>', ':BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<C-3>', ':BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<C-4>', ':BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<C-5>', ':BufferLineGoToBuffer 5<CR>')
vim.keymap.set('n', '<C-6>', ':BufferLineGoToBuffer 6<CR>')
vim.keymap.set('n', '<C-7>', ':BufferLineGoToBuffer 7<CR>')
vim.keymap.set('n', '<C-8>', ':BufferLineGoToBuffer 8<CR>')
vim.keymap.set('n', '<C-9>', ':BufferLineGoToBuffer 9<CR>')
