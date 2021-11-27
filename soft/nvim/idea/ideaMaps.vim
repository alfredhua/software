" ================插件=====================
set surround
set multiple-cursors
set nerdtree
set easymotion  " <Space>
set commentary  " gc
set ReplaceWithRegister  " gr grr
set argtextobj  " 参数 (d,c,v)aa/ia
set exchange  " 更换，cx(iw,ap), cxx, X, cxc

nmap <C-m> <Plug>NextWholeOccurrence
xmap <C-m> <Plug>NextWholeOccurrence
nmap <C-x> <Plug>SkipOccurrence
xmap <C-x> <Plug>SkipOccurrence
xmap <C-p> <Plug>RemoveOccurrence
xmap <C-p> <Plug>RemoveOccurrence
xmap <S-C-p> <Plug>AllWholeOccurrence
xmap <S-C-p> <Plug>AllWholeOccurrence

map <Space> <Plug>(easymotion-prefix)

" =============== 搜索 ==================
map sf :action SearchEverywhere<CR>
map sc :action FindInPath<CR>
map sr :action ReplaceInPath<CR>

" =============== 窗口 ==================
nnoremap tt :NERDTreeToggle<CR>
nnoremap tb :action ActivateStructureToolWindow<CR>
nnoremap tm :action ShowPopupMenu<CR>
nnoremap tc :action HideAllWindows<CR>

" =============== 文件 ==================
nnoremap <Leader>rf :action RenameFile<CR>
nnoremap <Leader>nc :action NewClass<CR>

" =============== 代码，跳转 ==================
nnoremap gi :action GotoImplementation<CR>
nnoremap gd :action GotoDeclaration<CR>
nnoremap gb :action Back<CR>
nnoremap <C-o> :action OptimizeImports<CR>
nnoremap <Leader>cu :action Run<CR>
nnoremap <Leader>cd :action Debug<CR>
nnoremap <Leader>cs :action Stop<CR>
nnoremap <Leader>sg :action Generate<CR>

