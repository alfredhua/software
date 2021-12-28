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
map ta :action Annotate<cr>  
map tb :action ToggleLineBreakpoint<cr>  
map tm :action ToggleBookmark<cr>  
map tp :action ActivateProjectToolWindow<CR>
map ts :action ShowBookmarks<CR>
map tv :action ViewBreakpoints<CR>
map tf :action FindInPath<CR>
map tr :action ReplaceInPath<CR>
map te :action RecentFiles<CR>
map tj :set splitbelow<CR>:split<CR>
map tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

" =============== 代码，跳转 g ==================
map ge :action SearchEverywhere<CR>
map ga :<C-u>action GotoAction<CR>
map gb :<C-u>action JumpToLastChange<CR>
map go :<C-u>action GotoClass<CR>
map gd :<C-u>action GotoDeclaration<CR>
map gs :<C-u>action GotoSuperMethod<CR>
map gi :<C-u>action GotoImplementation<CR>
map gf :<C-u>action GotoFile<CR>
map gm :<C-u>action GotoSymbol<CR>
map gu :<C-u>action ShowUsages<CR>
map gt :<C-u>action GotoTest<CR>
map gh :<C-u>action Back<CR>
map gl :<C-u>action Forward<CR>
map gg :<C-u>action Generate<CR>

map mo :action OptimizeImports<CR>

" =============== 文件 ==================
map mr :action RenameFile<CR>
map me :action RenameElement<CR>

" =============== 运行 ==================
map mc :action RunClass<CR>
map md :action DebugClass<CR>
map mu :action Run<CR>
map mb :action Debug<CR>
map mf :action ChooseDebugConfiguration<CR>
map mt :action Stop<CR>
