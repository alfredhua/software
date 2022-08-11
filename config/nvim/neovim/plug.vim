call plug#begin('~/.config/plugged')

		" =============== window ==================
    Plug 'preservim/nerdtree'	
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

		" =============== search ==================
		Plug 'nvim-telescope/telescope.nvim'
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'

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

source ~/software/config/nvim/neovim/settings/setting.vim
source ~/software/config/nvim/neovim/themes.vim

" 配置
source ~/software/config/nvim/neovim/settings/coc.vim
" source ~/software/config/nvim/neovim/settings/lsp.vim
source ~/software/config/nvim/neovim/settings/markdown.vim
source ~/software/config/nvim/neovim/settings/tool.vim
source ~/software/config/nvim/neovim/settings/treesitter.vim
source ~/software/config/nvim/neovim/settings/ultisnips.vim
source ~/software/config/nvim/neovim/settings/window.vim
source ~/software/config/nvim/neovim/settings/fzf.vim
source ~/software/config/nvim/neovim/settings/ranger.vim
