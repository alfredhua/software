nnoremap <silent> > >>
nnoremap <silent> P "+p
vnoremap <silent> Y "+y
noremap <C-q> :q<CR>
noremap Q :bd<CR>
inoremap <C-a> <ESC>A
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> S :w<CR>
nnoremap <silent> <C-j> :bn<CR>
nnoremap <silent> <C-k> :bp<CR>
noremap <silent> M J
noremap <silent> K 5k
noremap <silent> L 5l
noremap <silent> H 5h
noremap <silent> J 5j
noremap <silent> N 0
noremap <silent> U <C-r>
noremap <silent> ns :nohlsearch<CR>

" =============== 更新 ==================
noremap <LEADER>ri :source $HOME/software/config/nvim/init.vim<CR>

" =================打开文本 e========================
noremap <LEADER>e :e ~/software/config/nvim/init.vim<CR>
" common
noremap <LEADER>ek :e ~/software/config/nvim/settings/keymaps.vim<CR>
noremap <LEADER>es :e ~/software/config/nvim/settings/settings.vim<CR>
" neovim
noremap <LEADER>ep :e ~/software/config/nvim/neovim/plugins/plug.vim<CR>
noremap <LEADER>ec :e ~/software/config/nvim/neovim/plugins/coc_setting.vim<CR>
noremap <LEADER>et :e ~/software/config/nvim/neovim/plugins/theme.vim<CR>
noremap <LEADER>en :e ~/software/config/nvim/neovim/settings/keymaps.vim<CR>
" idea 
noremap <LEADER>ed :e ~/software/config/nvim/idea/settings/keymaps.vim<CR>
" vscode


