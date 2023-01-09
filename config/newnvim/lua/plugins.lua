local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons', },
		tag = 'nightly'
	}
	use 'numToStr/FTerm.nvim'
	use 'kevinhwang91/rnvimr'
	use 'mhinz/vim-startify'

	-- =============== tool ==================
	use 'tpope/vim-fugitive'
	-- use 'junegunn/vim-easy-align'
	use 'tpope/vim-surround'
	use 'easymotion/vim-easymotion'
	use 'tommcdo/vim-exchange' --cx
	use 'tpope/vim-commentary' --gc
	use 'alvan/vim-closetag'
	use 'jiangmiao/auto-pairs'
	use 'terryma/vim-multiple-cursors'
	use 'lambdalisue/suda.vim'
	use 'vim-scripts/argtextobj.vim' -- dia
	use 'Yggdroot/indentLine'
	use 'chiel92/vim-autoformat'
	use 'majutsushi/tagbar'

	-- =============== snippets ==================
	use 'mattesgroeger/vim-bookmarks'

	-- =============== code ==================
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	-- use 'L3MON4D3/LuaSnip'
	-- use 'saadparwaiz1/cmp_luasnip'
	-- use 'SirVer/ultisnips'
	-- use 'quangnguyen30192/cmp-nvim-ultisnips'
	-- use 'dcampos/nvim-snippy'
	-- use 'dcampos/cmp-snippy'
	use "b0o/schemastore.nvim"

	-- =============== search ==================
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- =============== markdown ==================
	use 'instant-markdown/vim-instant-markdown'
	use 'dhruvasagar/vim-table-mode'

	-- =========== theme ============
	use 'kyazdani42/nvim-web-devicons'
	use 'akinsho/bufferline.nvim'
	use 'nvim-lualine/lualine.nvim'
	use "EdenEast/nightfox.nvim"
	if install_plugins then
		require('packer').sync()
	end
end)

require('plugins.nvim_tree')
require('plugins.fterm')
require('plugins.cmp')
require('plugins.themes')
require('plugins.telescope')
require('plugins.closetag')
require('plugins.nvim_treesitter')
require('lsp.lsp')
