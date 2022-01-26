" ============= rnvimr文件浏览插件 =================
" 可以打开后进行文件的复制，粘贴，删除等操作
" ==================================================
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 0

highlight link RnvimrNormal CursorLine
let g:rnvimr_ranger_views = [
			\ {'minwidth': 90, 'ratio': []},
			\ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
			\ {'maxwidth': 49, 'ratio': [1]}
			\ ]

let g:rnvimr_action = {
			\ '<C-t>': 'NvimEdit tabedit',
			\ '<C-x>': 'NvimEdit split',
			\ '<C-v>': 'NvimEdit vsplit',
			\ 'gw': 'JumpNvimCwd',
			\ 'yw': 'EmitRangerCwd'
			\ }

let g:rnvimr_layout = {
			\ 'relative': 'editor',
			\ 'width': float2nr(round(0.7 * &columns)),
			\ 'height': float2nr(round(0.7 * &lines)),
			\ 'col': float2nr(round(0.15 * &columns)),
			\ 'row': float2nr(round(0.15 * &lines)),
			\ 'style': 'minimal'
			\ }


" ===============  snippets ==================
"let g:UltiSnipsUsePythonVersion=3
"let g:vimspector_enable_mappings = 'HUMAN'
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/software/config/nvim/neovim/Ultisnips']


" =============== vim-easy-align ==================
xmap ga <Plug>(EasyAlign)
map ga <Plug>(EasyAlign)


" =============== nerd comment ==================
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv


" =============== far ==================
let g:far#enable_undo=1
let g:far#mapping = { "replace_undo" : ["l"] }

" =============== gitgutter ==================
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
nnoremap <Space>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <Space>g- :GitGutterPrevHunk<CR>
nnoremap <Space>g= :GitGutterNextHunk<CR>
" autocmd BufWritePost * GitGutter


" =============== markdown ==================
" vim-instany-markdown
let g:instant_markdown_autostart = 0
let g:instant_markdown_port = 8888
nnoremap mp :InstantMarkdownPreview<CR>


" =============== nerdtree ==================
" 创建：ma，删除：md，修改：mm
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
" autocmd vimenter * if !argc()|NERDTree|endif "开vim时如果没有文件自动打开NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "当NERDTree为剩下的唯一窗口时自动关闭
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeDirArrows = 1


" =============== suda ==================
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%


" ============ 函数窗口 ===========
" 成员函数,变量列表
let g:tagbar_width=30
let g:tagbar_right=1
let g:tagbar_autoclose=1

" ========= closetag =========================
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.vue,*.md'
let g:closetag_filetypes = 'html,xhtml,phtml,vue,jsx,js,md'


" ========= bookmarks =========================
let g:bookmark_auto_save = 1

