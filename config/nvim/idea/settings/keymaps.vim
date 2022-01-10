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


map <C-[> :<ESC>
" =============== 窗口  t ==================
"map ta :action Annotate<cr>
"map tv :action ViewBreakpoints<CR>
"map tf :action FindInPath<CR>
"map tr :action ReplaceInPath<CR>
"map te :action RecentFiles<CR>
map tp :action ActivateProjectToolWindow<CR>
map tt :action ActivateTerminalToolWindow<CR>
map tsb :set splitbelow<CR>:split<CR>
map tsl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map tm :action ShowBookmarks<CR>
map tb :action ToggleLineBreakpoint<cr>
map <leader>tn :action Generate<CR>
map <leader>ts :action ToggleFullScreen<CR>

map <M-t> :action SelectIn<CR>
map <leader>tg :action RecentProjectListGroup<CR>

" =============== 代码，跳转 g ==================
map ge :action SearchEverywhere<CR>
map gf :<C-u>action GotoFile<CR>
map gm :<C-u>action GotoSymbol<CR>
map go :<C-u>action GotoClass<CR>
map ga :<C-u>action GotoAction<CR>

map gs :<C-u>action GotoSuperMethod<CR>
map gb :<C-u>action JumpToLastChange<CR>
map gd :<C-u>action GotoDeclaration<CR>
map gi :<C-u>action GotoImplementation<CR>
map gu :<C-u>action ShowUsages<CR>
map gh :<C-u>action Back<CR>
map gl :<C-u>action Forward<CR>

map <leader>o :action OptimizeImports<CR>

" =============== 文件 ==================
map <leader>rf :action RenameFile<CR>
map <leader>re :action RenameElement<CR>

" =============== 运行 ==================
map <leader>rc :action RunClass<CR>
map <leader>ru :action Run<CR>
map <leader>dc :action DebugClass<CR>
map <leader>db :action Debug<CR>
map <leader>cc :action ChooseDebugConfiguration<CR>
map <leader>st :action Stop<CR>


map <leader>m :action ToggleBookmark<cr>
