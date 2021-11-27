let mapleader =" "
nnoremap <SPACE> <Nop>

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

" =============== 更新 ==================
noremap <LEADER>ri :source $HOME/software/soft/nvim/init.vim<CR>

" =================打开文本 e========================
noremap <LEADER>ein :e ~/software/soft/nvim/init.vim<CR>
noremap <LEADER>es :e ~/software/soft/nvim/setting/settings.vim<CR>
noremap <LEADER>ek :e ~/software/soft/nvim/setting/keymaps.vim<CR>
noremap <LEADER>eid :e ~/software/soft/nvim/idea/ideaMaps.vim<CR>

