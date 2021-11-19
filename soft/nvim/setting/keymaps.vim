
" 自定义快捷键
nnoremap Y y$ "
nnoremap > >>
nnoremap P "+p
vnoremap Y "+y
noremap Q :q<CR>
noremap S :w<CR>
inoremap <C-a> <ESC>A
nnoremap <C-s> :w<CR>
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>
noremap <silent> M J
noremap <silent> K 5k
noremap <silent> L 5l
noremap <silent> H 5h
noremap <silent> J 5j
noremap <silent> N 0
noremap <silent> N 0

" 打开文本 e
noremap <LEADER>ei :e $HOME/software/soft/nvim/init.vim<CR>
noremap <LEADER>ep :e $HOME/software/soft/nvim/plugins/plugin.vim<CR>

" 缓冲区操作b
noremap <LEADER>bd :bd<CR>

" 命令行操作command
nnoremap <LEADER>ct :!ctags -R<CR>

" 搜索相关 s
nmap sf :Files<CR>
noremap sc:F  **/*<left><left><left><left><left>
noremap sd :Fardo<CR>
noremap sr :Farr<CR>

" 窗口相关 t
noremap tj :set splitbelow<CR>:split<CR>
noremap tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <LEADER>tm :TableModeToggle<CR>
nnoremap tt :NERDTreeToggle<CR>
nnoremap tb :TagbarToggle<CR>

" 格式化相关 g
xmap ga <Plug>(EasyAlign)
map ga <Plug>(EasyAlign)

