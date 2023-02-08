-- 状态栏
require('lualine').setup()

-- bufferline
require("bufferline").setup{
  options = {
    diagnostics = "nvim_lsp",
    numbers="ordinal",
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    }
  }

}



