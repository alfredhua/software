set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1

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
set completeopt=longest,noinsert,menuone,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set updatetime=300


autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufNewFile,BufRead *.html,*.hml set filetype=md
autocmd BufNewFile,BufRead *.xml set filetype=xml

set expandtab
set autoindent

let g:clipboard = {
  \ 'name': 'pbcopy',
  \ 'copy': {
  \    '+': 'pbcopy',
  \    '*': 'pbcopy',
  \  },
  \ 'paste': {
  \    '+': 'pbpaste',
  \    '*': 'pbpaste',
  \ },
  \ 'cache_enabled': 0,
  \ } 
