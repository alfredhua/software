syntax enable
set nocompatible
set exrc
set secure
set number
set relativenumber
set cursorline
set hidden
set expandtab 
" set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
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
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set updatetime=300

let mapleader=" "

" Auto change directory to current dir
"autocmd BufEnter * silent! lcd %:p:h

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufNewFile,BufRead *.html,*.hml set filetype=md
autocmd BufNewFile,BufRead *.xml set filetype=xml

