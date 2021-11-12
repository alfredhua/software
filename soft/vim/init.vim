syntax on
set exrc
set secure
set number
set relativenumber
set cursorline
set hidden
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell

" 自定义快捷键
map <C-c> <ESC>  
nnoremap <C-s> :w<CR>
nnoremap Y y$ "

nnoremap > >>
nnoremap P "+p
vnoremap Y "+y
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>
noremap Q :q<CR>
noremap S :w<CR>
noremap <Space>ei :e $HOME/software/soft/vim/init.vim<CR>
noremap <Space>bd :bd<CR>
noremap <silent> M J
noremap <silent> K 5k
noremap <silent> L 5l
noremap <silent> H 5h
noremap <silent> J 5j
noremap <silent> N 0
inoremap <C-a> <ESC>A
nnoremap ct :!ctags -R<CR>

"插件
source $HOME/software/soft/vim/plugins/plugin.vim

