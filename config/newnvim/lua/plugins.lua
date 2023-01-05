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
  use 'preservim/nerdtree'	
  use 'kevinhwang91/rnvimr'
  use 'xuyuanp/nerdtree-git-plugin'
  use 'mhinz/vim-startify'

  -- =============== tool ==================
  use 'tpope/vim-fugitive'
  use 'junegunn/vim-easy-align'
  use 'tpope/vim-surround'
  use 'easymotion/vim-easymotion'
  use 'tommcdo/vim-exchange'
  use 'tpope/vim-commentary'
  use 'alvan/vim-closetag'
  use 'jiangmiao/auto-pairs'
  use 'terryma/vim-multiple-cursors'
  use 'lambdalisue/suda.vim'
  use 'vim-scripts/argtextobj.vim'
  use 'Yggdroot/indentLine'
  use 'chiel92/vim-autoformat'
  use 'majutsushi/tagbar'

  -- =============== snippets ==================
  use 'sirver/ultisnips'
  use 'mattesgroeger/vim-bookmarks'

  -- =============== code ==================
  use 'nvim-treesitter/nvim-treesitter'
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'

  -- =============== search ==================
  use 'nvim-lua/plenary.nvim'
  use {'nvim-telescope/telescope.nvim', tag= '0.1.0'}

  -- =============== markdown ==================
  use 'instant-markdown/vim-instant-markdown'
  use 'dhruvasagar/vim-table-mode'

  -- =========== theme ============
  use 'kyazdani42/nvim-web-devicons'
  use 'akinsho/bufferline.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'joshdick/onedark.vim'
  use "EdenEast/nightfox.nvim"
  if install_plugins then
    require('packer').sync()
  end
end)
