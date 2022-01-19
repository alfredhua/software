"--------------
" LeaderF start
"--------------
"let g:Lf_Ctags="ctags"
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.logs','.git', '.svn', '.hg', '.project', '.root','node_module']
let g:Lf_UseVersionControlTool=1 "default value, can ignore
let g:Lf_DefaultExternalTool='rg'
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowHeight = 0.30
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {
        \ 'File': 0,
        \ 'Buffer': 0,
        \ 'Mru': 0,
        \ 'Tag': 0,
        \ 'BufTag': 1,
        \ 'Function': 1,
        \ 'Line': 1,
        \ 'Colorscheme': 0,
        \ 'Rg': 0,
        \ 'Gtags': 0
        \}
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_GtagsGutentags = 1

"let g:Lf_ShortcutF = '<c-p>'
"let g:Lf_ShortcutB = '<c-l>'
