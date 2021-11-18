local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  use {'preservim/nerdtree', ope=true}
  use {'majutsushi/tagbar', ope=true}

  -- theme
  use {'mhartington/oceanic-next', ope=true}
  use {'ryanoasis/vim-devicons', opt = true}
end)
