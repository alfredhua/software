syntax on
set number
set hlsearch
set nocompatible
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cursorline
set ruler
set relativenumber
set encoding=UTF-8

" 自定义快捷键
map <C-c> <ESC>  
nnoremap <C-s> :w<CR>
nnoremap Y y$ "
nnoremap < <<
nnoremap > >>
nnoremap P "+p
vnoremap Y "+y
"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" fzf 文件搜索
nmap <C-o> :Files<CR>
nmap <C-e> :Buffers<CR>

" nerdtree
" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
" autocmd vimenter * if !argc()|NERDTree|endif "打开vim时如果没有文件自动打开NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "当NERDTree为剩下的唯一窗口时自动关闭
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeDirArrows = 1
nnoremap tree :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷键

"ariline
let g:airline_theme='google_dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" vim-instany-markdown

let g:instant_markdown_autostart = 0
nnoremap mp :InstantMarkdownPreview<CR>

" 注释
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" 成员函数,变量列表
nmap tb :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_right=1
let g:tagbar_autoclose=1

"插件管理
call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'   " 树形目录
	Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示 
	Plug 'tpope/vim-surround'        " vim 环绕输入
    Plug 'suan/vim-instant-markdown' " markdown预览
	Plug 'flazz/vim-colorschemes' "vim 主题
	Plug '/usr/local/opt/fzf'     " 文件搜索
	Plug 'junegunn/fzf.vim'     
	Plug 'mileszs/ack.vim'      " 文件内容搜索
	Plug 'vim-airline/vim-airline'  " 行样式
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'  " 括号自动匹配
	Plug 'mattn/emmet-vim' " html vue高亮 支持
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdcommenter' " 注释插件 
	Plug 'majutsushi/tagbar'
call plug#end()

" 主题
colorscheme gruvbox

set termguicolors

" LSP配置
lua << EOF
EOF

