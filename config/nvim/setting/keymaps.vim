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
noremap <LEADER>ri :source $HOME/software/config/nvim/init.vim<CR>

" =================打开文本 e========================
noremap <LEADER>ei :e ~/software/config/nvim/init.vim<CR>
noremap <LEADER>ek :e ~/software/config/nvim/setting/keymaps.vim<CR>
noremap <LEADER>ev :e ~/software/config/nvim/setting/vim_keymaps.vim<CR>
noremap <LEADER>ed :e ~/software/config/nvim/setting/idea_keymaps.vim<CR>
noremap <LEADER>es :e ~/software/config/nvim/setting/settings.vim<CR>
noremap <LEADER>ep :e ~/software/config/nvim/plug.vim<CR>


nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
