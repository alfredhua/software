inoremap <silent> <C-a> <ESC>A
inoremap <C-[> <ESC>

nnoremap <silent> K 5k
nnoremap <silent> L 5l
nnoremap <silent> H 5h
nnoremap <silent> J 5j
vnoremap <silent> K 5k
vnoremap <silent> L 5l
vnoremap <silent> H 5h
vnoremap <silent> J 5j
vnoremap <silent> Y "+y
nnoremap <silent> > >>
nnoremap <silent> P "+p
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> M J

nnoremap <silent> U <C-r>
nnoremap <silent> <LEADER><CR> :nohlsearch<CR>
nnoremap <silent> <C-j> :bn<CR>
nnoremap <silent> <C-k> :bp<CR>

" =============== 更新 ==================
nnoremap <LEADER>ri :source $HOME/software/config/nvim/init.vim<CR>

" =================打开文本 e========================
nnoremap <LEADER>e :e ~/software/config/nvim/init.vim<CR>
" common
nnoremap <LEADER>ek :e ~/software/config/nvim/settings/keymaps.vim<CR>
nnoremap <LEADER>es :e ~/software/config/nvim/settings/settings.vim<CR>
" neovim
nnoremap <LEADER>ep :e ~/software/config/nvim/neovim/plug.vim<CR>
nnoremap <LEADER>et :e ~/software/config/nvim/neovim/theme.vim<CR>
nnoremap <LEADER>en :e ~/software/config/nvim/neovim/keymaps.vim<CR>
" idea 
nnoremap <LEADER>ed :e ~/software/config/nvim/idea/settings/keymaps.vim<CR>
" vscode


