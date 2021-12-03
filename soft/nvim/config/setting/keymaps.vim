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
noremap <LEADER>ui :source $HOME/software/soft/nvim/init.vim<CR>

" =================打开文本 e========================
noremap <LEADER>ei :e ~/software/soft/nvim/config/init.vim<CR>
noremap <LEADER>ek :e ~/software/soft/nvim/config/setting/keymaps.vim<CR>
noremap <LEADER>es :e ~/software/soft/nvim/config/setting/settings.vim<CR>
noremap <LEADER>ed :e ~/software/soft/nvim/config/setting/idea_keymaps.vim<CR>

