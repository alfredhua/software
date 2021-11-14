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

"插件
source $HOME/software/soft/vim/plugins/plugin.vim

" 自定义快捷键
nnoremap Y y$ "
nnoremap > >>
nnoremap P "+p
vnoremap Y "+y
noremap Q :q<CR>
noremap S :w<CR>
inoremap <C-a> <ESC>A
map <C-c> <ESC>
nnoremap <C-s> :w<CR>
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>
noremap <silent> M J
noremap <silent> K 5k
noremap <silent> L 5l
noremap <silent> H 5h
noremap <silent> J 5j
noremap <silent> N 0

" 打开文本 e
noremap <Space>ei :e $HOME/software/soft/vim/init.vim<CR>
noremap <Space>ep :e $HOME/software/soft/vim/plugins/plugin.vim<CR>

" 缓冲区操作b
noremap <Space>bd :bd<CR>

" 命令行操作command
nnoremap <Space>ct :!ctags -R<CR>

" coc相关 co
nmap <Space>cp <Plug>(coc-translator-p)

" 搜索相关 s
nmap sf :Files<CR>
noremap sc:F  **/*<left><left><left><left><left>
noremap sd :Fardo<CR>
noremap sr :Farr<CR>

" 窗口相关 t
nnoremap tt :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷
nmap tb :TagbarToggle<CR>

" 格式化相关 g
xmap ga <Plug>(EasyAlign)
map ga <Plug>(EasyAlign)

" 文本操作,markdown相关
nnoremap mp :InstantMarkdownPreview<CR>
