if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call plug#begin('~/.config/plugged')

		Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}
		Plug 'mhinz/vim-startify'
		Plug 'tpope/vim-surround'        " vim 环绕输入
		Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示
		Plug 'tpope/vim-fugitive'  " git 操作
		Plug 'kevinhwang91/rnvimr'  " 文件浏览
		Plug 'Lokaltog/vim-easymotion'   "快速定位
		Plug 'tommcdo/vim-exchange'   "单词交换cxw

		" =============== 搜索 ==================
		Plug '/usr/local/opt/fzf'     " 文件搜索
		Plug 'junegunn/fzf.vim'
		Plug 'brooth/far.vim'   " 内容搜索
		Plug 'preservim/nerdcommenter' " 注释插件
		Plug 'alvan/vim-closetag'  " 输入框匹配
		Plug 'jiangmiao/auto-pairs' " 自动匹配括号
		Plug 'mileszs/ack.vim'
		Plug 'terryma/vim-multiple-cursors'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'kien/ctrlp.vim'


		" =============== 工具 ==================
		Plug 'SirVer/ultisnips'
		Plug 'honza/vim-snippets'     "代码片段
		Plug 'Chiel92/vim-autoformat'  " 格式化
		Plug 'junegunn/vim-easy-align' " 符号对齐

		" =========== react ===============
		Plug 'yuezk/vim-js'  
		Plug 'maxmellon/vim-jsx-pretty'

		" =============== markdown ==================
		Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
		Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
		Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
		Plug 'suan/vim-instant-markdown' " markdown预览

		" =========== theme ============
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'morhetz/gruvbox'
		Plug 'mhartington/oceanic-next'

call plug#end()

source ~/software/config/nvim/plugins/theme.vim
source ~/software/config/nvim/plugins/rnvimr.vim
