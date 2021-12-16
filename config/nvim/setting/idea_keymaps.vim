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
map <Leader>sf :action SearchEverywhere<CR>
map <Leader>sc :action FindInPath<CR>
map <Leader>sr :action ReplaceInPath<CR>
nnoremap <Leader>sp :action ShowFilePath<CR>

" =============== 窗口 ==================
"nnoremap tt :NERDTreeToggle<CR>
nnoremap <Leader>tb :action ActivateStructureToolWindow<CR>
nnoremap <Leader>tm :action ShowPopupMenu<CR>
nnoremap <Leader>th :action HideAllWindows<CR>
nnoremap <Leader>tc :action CloseActiveTab<CR>

" =============== 文件 ==================
nnoremap <Leader>rf :action RenameFile<CR>
nnoremap <Leader>re :action RenameElement<CR>
nnoremap <Leader>nc :action NewClass<CR>

" =============== 代码，跳转 ==================
nnoremap gi :action GotoImplementation<CR>
nnoremap gd :action GotoDeclaration<CR>
nnoremap gb :action Back<CR>
nnoremap gc :action GotoClass<CR>
nnoremap su :action ShowUsages<CR>
nnoremap <Leader>sg :action Generate<CR>

nnoremap <C-o> :action OptimizeImports<CR>

nnoremap <Leader>ro :action Run<CR>
nnoremap <Leader>rd :action ChooseDebugConfiguration<CR>
nnoremap <Leader>rs :action Stop<CR>

nnoremap <Leader>bb :action ToggleLineBreakpoint<CR>
nnoremap <Leader>br :action ViewBreakpoints<CR>



