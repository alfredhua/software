" ============= rnvimr文件浏览插件 =================
" 可以打开后进行文件的复制，粘贴，删除等操作
" ==================================================
" let g:rnvimr_enable_ex = 1
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

" =============== nerdtree ==================
" 创建：ma，删除：md，修改：mm
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
" autocmd vimenter * if !argc()|NERDTree|endif "开vim时如果没有文件自动打开NERDTree
" 当NERDTree为剩下的唯一窗口时自动关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeDirArrows = 1


" ============ 函数窗口 ===========
" 成员函数,变量列表
let g:tagbar_width=30
let g:tagbar_right=1
let g:tagbar_autoclose=1


" ========= bookmarks =========================
let g:bookmark_auto_save = 1


" =============== far ==================
let g:far#enable_undo=1
let g:far#mapping = { "replace_undo" : ["l"] }
