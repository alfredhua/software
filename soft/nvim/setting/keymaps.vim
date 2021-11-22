
" 自定义快捷键
nnoremap <silent> > >>
nnoremap <silent> P "+p
vnoremap <silent> Y "+y
noremap Q :q<CR>
noremap <C-q> :bd<CR>
noremap S :w<CR>
inoremap <C-a> <ESC>A
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-j> :bn<CR>
nnoremap <silent> <C-k> :bp<CR>
noremap <silent> M J
noremap <silent> K 5k
noremap <silent> L 5l
noremap <silent> H 5h
noremap <silent> J 5j
noremap <silent> N 0
noremap <LEADER>r :source $HOME/software/soft/nvim/init.vim<CR>

" 打开文本 e
noremap <LEADER>ei :e $HOME/software/soft/nvim/init.vim<CR>
noremap <LEADER>es :e $HOME/software/soft/nvim/setting/settings.vim<CR>
noremap <LEADER>ek :e $HOME/software/soft/nvim/setting/keymaps.vim<CR>
noremap <LEADER>ep :e $HOME/software/soft/nvim/plugins/plugin.vim<CR>


" 命令行操作command
nnoremap <LEADER>ct :!ctags -R<CR>

" 搜索相关 s
noremap sf :Files<CR>
noremap sc :F  **/*<left><left><left><left><left>
noremap sd :Fardo<CR>
noremap sr :Farr<CR>

" 窗口相关 t
noremap tj :set splitbelow<CR>:split<CR>
noremap tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap tm :TableModeToggle<CR>
nnoremap tt :NERDTreeToggle<CR>
nnoremap tb :TagbarToggle<CR>
nnoremap to :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>

" 格式化相关 g
xmap ga <Plug>(EasyAlign)
map ga <Plug>(EasyAlign)

