require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "html", "css", "javascript",  "vue", "scss" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    additional_vim_regex_hightlight = true

  },
  -- 增量选择
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  }
}
