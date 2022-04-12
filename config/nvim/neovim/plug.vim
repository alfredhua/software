call plug#begin('~/.config/plugged')

		" =============== window ==================
		Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}
		Plug 'kevinhwang91/rnvimr'
		Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'mhinz/vim-startify'

		" =============== tool ==================
		Plug 'tpope/vim-fugitive'
		Plug 'junegunn/vim-easy-align'
		Plug 'tpope/vim-surround'
		Plug 'easymotion/vim-easymotion'
		Plug 'tommcdo/vim-exchange'
		Plug 'tpope/vim-commentary'
		Plug 'alvan/vim-closetag'
		Plug 'jiangmiao/auto-pairs'
		Plug 'terryma/vim-multiple-cursors'
		Plug 'lambdalisue/suda.vim'
		Plug 'vim-scripts/argtextobj.vim'

		" =============== snippets ==================
		Plug 'SirVer/ultisnips'
		Plug 'MattesGroeger/vim-bookmarks'

		" =============== code ==================
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

		" =============== search ==================
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim'

		" =============== markdown ==================
		Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
		Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }

		" =========== theme ============
		Plug 'kyazdani42/nvim-web-devicons'
		Plug 'itchyny/lightline.vim'
		Plug 'akinsho/bufferline.nvim'
		Plug 'joshdick/onedark.vim'

call plug#end()

if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

source ~/software/config/nvim/neovim/themes.vim

" 配置
source ~/software/config/nvim/neovim/settings/coc.vim
source ~/software/config/nvim/neovim/settings/leaderf.vim
source ~/software/config/nvim/neovim/settings/lsp.vim
source ~/software/config/nvim/neovim/settings/markdown.vim
source ~/software/config/nvim/neovim/settings/telescope.vim
source ~/software/config/nvim/neovim/settings/tool.vim
source ~/software/config/nvim/neovim/settings/treesitter.vim
source ~/software/config/nvim/neovim/settings/ultisnips.vim
source ~/software/config/nvim/neovim/settings/window.vim

" let s:files=split(globpath("~/software/config/nvim/neovim/settings/", '*'),'\n')
" for s:filePath in s:files
" 	 runtime s:filePath
" endfor


