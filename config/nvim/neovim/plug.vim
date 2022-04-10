call plug#begin('~/.config/plugged')

		" =============== window ==================
		Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}
		Plug 'kevinhwang91/rnvimr'
		Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'mhinz/vim-startify'

		" =============== tool ==================
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
		" Plug 'SirVer/ultisnips'
		" Plug 'honza/vim-snippets'
		Plug 'MattesGroeger/vim-bookmarks'

		" =============== code ==================
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

		" =============== search ==================
		" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
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

source ~/software/config/nvim/neovim/settings/lsp.vim
let s:files=split(globpath("~/software/config/nvim/neovim/settings/", '*'),'\n')

for s:filePath in s:files
	runtime s:filePath
endfor

" source ~/software/config/nvim/neovim/settings/*
" source ~/software/config/nvim/neovim/plugins/coc.vim
" source ~/software/config/nvim/neovim/plugins/leaderf.vim
" source ~/software/config/nvim/neovim/settings/lsp.vim
" source ~/software/config/nvim/neovim/settings/plug_setting.vim
" source ~/software/config/nvim/neovim/settings/telescope.vim




