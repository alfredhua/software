"插件管理
call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}   " 树形目录
	Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示 
	Plug 'tpope/vim-surround'        " vim 环绕输入
	Plug 'suan/vim-instant-markdown' " markdown预览
	Plug '/usr/local/opt/fzf'     " 文件搜索
	Plug 'junegunn/fzf.vim'     
	Plug 'mileszs/ack.vim'      " 文件内容搜索
	Plug 'jiangmiao/auto-pairs'  " 括号自动匹配
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdcommenter' " 注释插件 
	Plug 'majutsushi/tagbar'
	" 代码
	Plug 'alvan/vim-closetag'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Chiel92/vim-autoformat'
	Plug 'junegunn/vim-easy-align'
	Plug 'lambdalisue/suda.vim'  " 可读文件编辑

	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'mhartington/oceanic-next'

call plug#end()

" closetag
let g:closetag_filetypes = 'html,xhtml,phtml,vue,jsx'

" 翻译
nmap ts <Plug>(coc-translator-p)

" fzf 文件搜索
nmap sf :Files<CR>
nmap <C-e> :Buffers<CR>

" vim-instany-markdown
let g:instant_markdown_autostart = 0
nnoremap mp :InstantMarkdownPreview<CR>

" 注释
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" 成员函数,变量列表
nmap tb :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_right=1
let g:tagbar_autoclose=1

" snippets
let g:vimspector_enable_mappings = 'HUMAN'

" align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vue
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

" nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
" autocmd vimenter * if !argc()|NERDTree|endif "开vim时如果没有文件自动打开NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "当NERDTree为剩下的唯一窗口时自动关闭
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeDirArrows = 1
nnoremap tt :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷

" ariline
let g:airline_theme='google_dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" oceanic
syntax enable
set t_Co=256
if (has("termguicolors"))
	set termguicolors
endif
colorscheme OceanicNext

" suda.vim
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%

" 脚本
lua << EOF
EOF
