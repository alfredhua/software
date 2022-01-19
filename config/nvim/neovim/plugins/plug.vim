call plug#begin('~/.config/plugged')

		" =============== window ==================
    Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}
		Plug 'kevinhwang91/rnvimr'
		Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'tpope/vim-fugitive'

		" =============== tool ==================
		Plug 'junegunn/vim-easy-align'
		Plug 'mhinz/vim-startify'
		Plug 'tpope/vim-surround'
		Plug 'easymotion/vim-easymotion'
		Plug 'tommcdo/vim-exchange'
		Plug 'preservim/nerdcommenter'
		Plug 'alvan/vim-closetag'
		Plug 'jiangmiao/auto-pairs'
		Plug 'terryma/vim-multiple-cursors'
		Plug 'lambdalisue/suda.vim'

		" =============== snippets ==================
		Plug 'SirVer/ultisnips'
		Plug 'honza/vim-snippets'
		Plug 'MattesGroeger/vim-bookmarks'

		" =============== code ==================
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

		" =============== search ==================
		"Plug '/usr/local/opt/fzf'
		"Plug 'junegunn/fzf.vim'
		"Plug 'brooth/far.vim'
		"Plug 'mileszs/ack.vim'
		Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

		" =============== markdown ==================
		Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
		Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
		Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
		Plug 'suan/vim-instant-markdown'

		" =========== theme ============
		Plug 'kyazdani42/nvim-web-devicons'
		Plug 'romgrk/barbar.nvim'
		Plug 'itchyny/lightline.vim'
		Plug 'mhartington/oceanic-next'
		Plug 'joshdick/onedark.vim'

call plug#end()

source ~/software/config/nvim/neovim/plugins/plug_setting.vim
source ~/software/config/nvim/neovim/plugins/coc.vim
source ~/software/config/nvim/neovim/plugins/theme.vim
source ~/software/config/nvim/neovim/plugins/leaderf.vim


if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

