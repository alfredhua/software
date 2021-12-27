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

" =============== 窗口  t ==================
nnoremap ta :action Annotate<cr>  
nnoremap tb :action ToggleLineBreakpoint<cr>  
nnoremap tm :action ToggleBookmark<cr>  
nnoremap tp :action ActivateProjectToolWindow<CR>
nnoremap ts :action ShowBookmarks<CR>
nnoremap tv :action ViewBreakpoints<CR>
nnoremap tf :action FindInPath<CR>
nnoremap tr :action ReplaceInPath<CR>

" =============== 代码，跳转 g ==================
nnoremap ge :action SearchEverywhere<CR>
nnoremap ga :<C-u>action GotoAction<CR>
nnoremap gb :<C-u>action JumpToLastChange<CR>
nnoremap gcl :<C-u>action GotoClass<CR>
nnoremap gd :<C-u>action GotoDeclaration<CR>
nnoremap gs :<C-u>action GotoSuperMethod<CR>
nnoremap gi :<C-u>action GotoImplementation<CR>
nnoremap gf :<C-u>action GotoFile<CR>
nnoremap gm :<C-u>action GotoSymbol<CR>
nnoremap gu :<C-u>action ShowUsages<CR>
nnoremap gt :<C-u>action GotoTest<CR>
nnoremap gp :<C-u>action FindInPath<CR>
nnoremap gr :<C-u>action RecentFiles<CR>
nnoremap gh :<C-u>action Back<CR>
nnoremap gl :<C-u>action Forward<CR>
nnoremap gg :<C-u>action Generate<CR>
nnoremap no :action OptimizeImports<CR>

" =============== 文件 ==================
nnoremap mrf :action RenameFile<CR>
nnoremap mre :action RenameElement<CR>

" =============== 运行 ==================
nnoremap mrc :action RunClass<CR>
nnoremap mdc :action DebugClass<CR>
nnoremap mro :action Run<CR>
nnoremap mdo :action Debug<CR>
nnoremap mcc :action ChooseDebugConfiguration<CR>
nnoremap mst :action Stop<CR>
