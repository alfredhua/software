call plug#begin('~/.config/plugged')

		" =============== window ==================
    " Plug 'preservim/nerdtree'	
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'numToStr/FTerm.nvim'
		Plug 'kevinhwang91/rnvimr'
		Plug 'xuyuanp/nerdtree-git-plugin'
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
		Plug 'Yggdroot/indentLine'
		Plug 'chiel92/vim-autoformat'
    Plug 'majutsushi/tagbar'

		" =============== snippets ==================
		Plug 'sirver/ultisnips'
		Plug 'mattesgroeger/vim-bookmarks'

		" =============== code ==================
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':tsupdate'}
    " Plug 'williamboman/nvim-lsp-installer'
    " Plug 'neovim/nvim-lspconfig'

		" =============== search ==================
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

		" =============== markdown ==================
		Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
		Plug 'dhruvasagar/vim-table-mode', { 'for': ['text', 'markdown', 'vim-plug'] }

		" =========== theme ============
		Plug 'kyazdani42/nvim-web-devicons'
		Plug 'akinsho/bufferline.nvim'
    Plug 'nvim-lualine/lualine.nvim'
		Plug 'joshdick/onedark.vim'

call plug#end()

if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -flo ~/.config/nvim/autoload/plug.vim --create-dirs  
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd vimenter * pluginstall --sync | source $myvimrc
endif

autocmd vimenter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

source ~/software/config/nvim/neovim/themes.vim

for file in split(glob("~/software/config/nvim/neovim/plugins/*.vim"), '\n')
    exe 'source' file
endfor


