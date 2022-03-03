" =============== coc ==================
let g:coc_global_extensions = [
			\ 'coc-css',
			\ 'coc-html',
			\ 'coc-xml',
			\ 'coc-json',
			\ 'coc-pyright',
			\ 'coc-syntax',
			\ 'coc-translator',
			\ 'coc-vetur',
			\ 'coc-tsserver',
			\ 'coc-imselect',
			\ 'coc-vimlsp']

autocmd CursorHold * silent call CocActionAsync('highlight')


" =============== treesitter ==================
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "css", "vim", "json","java","yaml","python","lua", "javascript", "typescript", "tsx","vue"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
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
  }
}
EOF
