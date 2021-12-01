let g:nvim_tree_icons = {
    \ 'default': '[]',
    \ 'symlink': '[]',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open':  '▸',
    \   'arrow_closed': '▾',
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
lua << EOF

require'nvim-tree'.setup {
    -- 关闭文件时自动关闭
    auto_close = true,
    -- 不显示 git 状态图标
    git = {
        enable = false
    }
}
EOF
nnoremap tt :NvimTreeToggle<CR>

