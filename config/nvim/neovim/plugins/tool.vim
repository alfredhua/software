" =============== vim-easy-align ==================
xmap ga <Plug>(EasyAlign)
map ga <Plug>(EasyAlign)


" =============== suda ==================
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%


" ========= closetag =========================
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.vue,*.md'
let g:closetag_filetypes = 'html,xhtml,phtml,vue,jsx,js,md'
let g:closetag_shortcut = '>'



" ========= vim-multiple-cursors =========================
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'


" =============== nerd comment ==================
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
