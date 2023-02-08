require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons', },
		tag = 'nightly'
	}
	use 'numToStr/FTerm.nvim'
	-- use 'kevinhwang91/rnvimr' -- 文件管理
	-- use 'mhinz/vim-startify' --起始页
  use { 'glepnir/dashboard-nvim' }
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

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
	-- use 'Yggdroot/indentLine'
	-- use 'chiel92/vim-autoformat'
	use 'majutsushi/tagbar'

	-- =============== snippets ==================
	use 'mattesgroeger/vim-bookmarks'

	-- =============== code ==================
	-- use 'nvim-treesitter/nvim-treesitter'
	-- use 'neovim/nvim-lspconfig'
	-- use({ "williamboman/mason.nvim" })
	-- use({ "williamboman/mason-lspconfig.nvim" })
	-- use 'hrsh7th/cmp-nvim-lsp'
	-- use 'hrsh7th/cmp-buffer'
	-- use 'hrsh7th/cmp-path'
	-- use 'hrsh7th/cmp-cmdline'
	-- use 'hrsh7th/nvim-cmp'
	-- use 'hrsh7th/cmp-vsnip'
	-- use 'hrsh7th/vim-vsnip'
	-- use 'L3MON4D3/LuaSnip'
	-- use 'saadparwaiz1/cmp_luasnip'
	-- use 'SirVer/ultisnips'
	-- use 'quangnguyen30192/cmp-nvim-ultisnips'
	-- use 'dcampos/nvim-snippy'
	-- use 'dcampos/cmp-snippy'
	use 'b0o/schemastore.nvim'

	-- =============== search ==================
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- =============== markdown ==================
	-- use 'instant-markdown/vim-instant-markdown'
	-- use 'dhruvasagar/vim-table-mode'

	-- =========== theme ============
	use 'kyazdani42/nvim-web-devicons'
	use 'akinsho/bufferline.nvim'
	use 'nvim-lualine/lualine.nvim'
	use "EdenEast/nightfox.nvim"

	if install_plugins then
		require('packer').sync()
	end
end)


