local g = vim.g
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

g.NERDTreeWinSize = 25 
g.NERDTreeDirArrowExpandable = '▸'
g.NERDTreeDirArrowCollapsible = '▾'
g.NERDTreeShowLineNumbers=0 
g.NERDTreeHidden=0 
--let NERDTreeDirArrows = 1

-- autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
-- let NERDTreeShowBookmarks=1 
--

map('n','tt',':NERDTreeToggle<CR>',default_opts) 
