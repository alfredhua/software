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
noremap <silent> ns :set nohlsearch<CR>

" =============== 更新 ==================
noremap <LEADER>ri :source $HOME/software/config/nvim/init.vim<CR>

" =================打开文本 e========================
noremap <LEADER>ei :e ~/software/config/nvim/init.vim<CR>
noremap <LEADER>ek :e ~/software/config/nvim/setting/keymaps.vim<CR>
noremap <LEADER>ev :e ~/software/config/nvim/setting/vim_keymaps.vim<CR>
noremap <LEADER>ed :e ~/software/config/nvim/setting/idea_keymaps.vim<CR>
noremap <LEADER>es :e ~/software/config/nvim/setting/settings.vim<CR>
noremap <LEADER>ep :e ~/software/config/nvim/plugins/plug.vim<CR>


nnoremap <silent>  <leader>1 :BufferGoto 1<CR>
nnoremap <silent>  <leader>2 :BufferGoto 2<CR>
nnoremap <silent>  <leader>3 :BufferGoto 3<CR>
nnoremap <silent>  <leader>4 :BufferGoto 4<CR>
nnoremap <silent>  <leader>5 :BufferGoto 5<CR>
nnoremap <silent>  <leader>6 :BufferGoto 6<CR>
nnoremap <silent>  <leader>7 :BufferGoto 7<CR>
nnoremap <silent>  <leader>8 :BufferGoto 8<CR>
