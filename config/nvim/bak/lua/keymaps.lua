local keyset = vim.keymap.set
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false,remap = true}

-- 复制粘贴
keyset("v", "Y", "\"+y")
keyset("n", "P", "\"+p")
keyset("v", "P", "\"+p")

-- 移动
keyset("n", "K", "5k")
keyset("v", "K", "5k")
keyset("n", "L", "5l")
keyset("v", "L", "5l")
keyset("n", "H", "5h")
keyset("v", "H", "5h")
keyset("n", "J", "5j")
keyset("v", "J", "5j")
keyset("i", "<C-a>", "<ESC>A")
keyset("n", "<C-[>", "<ESC>")

-- buffer
keyset("n", "<C-j>", ":bn<CR>")
keyset("n", "<C-k>", ":bp<CR>")
keyset("n", "<C-q>", ":bd<CR>")

keyset('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>')
keyset('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>')
keyset('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>')
keyset('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>')
keyset('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>')
keyset('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>')
keyset('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>')
keyset('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>')
keyset('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>')

keyset("n", ">", ">>")
keyset("n", "<C-s>", ":w<CR>")
keyset("n", "M", "J")
keyset("n", "U", "<C-r>")
keyset("n", "<leader><CR>", ":nohlsearch<CR>")

keyset("n", "sv", ":vsp<CR>")
keyset("n", "sh", ":sp<CR>")
keyset("n", "sc", ":close<CR>")
keyset("n", "so", ":only<CR>")

-- tb
keyset("n", "tb", ":TagbarToggle<CR>")

-- telescope
keyset("n", "<leader>ff", ":Telescope find_files<CR>")
keyset("n", "<leader>fg", ":Telescope live_grep<CR>")
keyset("n", "<leader>fb", ":Telescope buffers<CR>")
keyset("n", "<leader>fh", ":Telescope help_tags<CR>")

-- nvimrc
keyset("n", "tp", ":NvimTreeToggle<CR>")
keyset("n", "tc", ":NvimTreeClose<CR>")
keyset("n", "ti", ":NvimTreeFindFile<CR>")

-- fterm
keyset('n', 'tt', '<CMD>lua require("FTerm").toggle()<CR>')

-- 文件
keyset("n", "<leader>ei", ":e ~/software/config/nvim/init.vim<CR>")

-- git 
keyset("n", "<leader>gb", ":Git blame<CR>")
