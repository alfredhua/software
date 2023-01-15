" =============== treesitter ==================
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "css", "vim", "json","java","yaml","python","lua", "javascript", "typescript", "tsx","vue"},
  highlight = {
    enable = true,
    --additional_vim_regex_highlighting = false
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  indent = {
    enable = true
  },
  playground = {
    enable = true,
  }
}

EOF

" TSToggle highlight


