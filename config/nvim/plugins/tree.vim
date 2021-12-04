lua << EOF
require('nvim-tree').setup {
  open_on_setup = true,
  update_cwd = true,
  view = {
    width = 32,
    auto_resize = true
  },
  filters = {
    dotfiles = true,
    custom = { '.git', 'node_modules', '.cache', '.bin' },
  },
  git = {
    enable = true,
    ignore = true,
  },
}
EOF

nnoremap tt :NvimTreeToggle<CR>
