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

		" =============== tool ==================
		Plug 'junegunn/vim-easy-align' 
		Plug 'mhinz/vim-startify'
		Plug 'tpope/vim-surround'
		Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'tpope/vim-fugitive'
		Plug 'kevinhwang91/rnvimr'
		Plug 'Lokaltog/vim-easymotion'
		Plug 'tommcdo/vim-exchange'
		Plug 'preservim/nerdcommenter'
		Plug 'alvan/vim-closetag'
		Plug 'jiangmiao/auto-pairs'
		Plug 'terryma/vim-multiple-cursors'

		" =============== snippets ==================
		Plug 'SirVer/ultisnips'
		Plug 'honza/vim-snippets'

		" =============== code ==================
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'Chiel92/vim-autoformat'  " 格式化

		" =============== search ==================
		Plug '/usr/local/opt/fzf'
		Plug 'junegunn/fzf.vim'
		Plug 'brooth/far.vim'
		Plug 'mileszs/ack.vim'

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

source ~/software/config/nvim/plugins/plug_setting.vim
