" ================插件=====================
set  surround
set  multiple-cursors
set  nerdtree
set  easymotion          " <Space>
set  commentary          " gc
set  ReplaceWithRegister " gr grr
set  argtextobj          " 参数 (d,c,v)aa/ia
set  exchange            " 更换，cx(iw,ap), cxx, X, cxc
set  keep-english-in-normal

map  <C-[>              :<ESC>
nmap <C-q>              :q<CR>

nmap <C-m>              <Plug>NextWholeOccurrence
xmap <C-m>              <Plug>NextWholeOccurrence
nmap <C-x>              <Plug>SkipOccurrence
xmap <C-x>              <Plug>SkipOccurrence
xmap <C-p>              <Plug>RemoveOccurrence
xmap <C-p>              <Plug>RemoveOccurrence
xmap <S-C-p>            <Plug>AllWholeOccurrence
xmap <S-C-p>            <Plug>AllWholeOccurrence

map  <leader>1           :b1<CR>
map  <leader>2           :b2<CR>
map  <leader>3           :b3<CR>
map  <leader>4           :b4<CR>
map  <leader>5           :b5<CR>
map  <leader>6           :b6<CR>
map  <leader>7           :b7<CR>
map  <leader>8           :b8<CR>
map  <leader>9           :b9<CR>

map  <leader>-           :action EditorDecreaseFontSize<CR>
map  <leader>=           :action EditorIncreaseFontSize<CR>

map <Leader> <Plug>(easymotion-prefix)

" =============== 代码，跳转 g ==================
map  ge                  :action SearchEverywhere<CR>
map  gs                  :<C-u>action GotoSuperMethod<CR>
map  gb                  :<C-u>action JumpToLastChange<CR>
map  gd                  :<C-u>action GotoDeclaration<CR>
map  gi                  :<C-u>action GotoImplementation<CR>
map  gu                  :<C-u>action ShowUsages<CR>
map  gh                  :<C-u>action Back<CR>
map  gl                  :<C-u>action Forward<CR>

" =============== 搜索相关 g ==================
map  <leader>ff          :action GotoFile<CR>
map  <leader>fg          :action FindInPath<CR>
map  <leader>fr          :action ReplaceInPath<CR>

" =============== 运行 leader r ==================
map  <leader>rr          :action Run<CR>
map  <leader>rb          :action Debug<CR>
map  <leader>rc          :action RunClass<CR>
map  <leader>rd          :action DebugClass<CR>
map  <leader>rf          :action ChooseDebugConfiguration<CR>
map  <leader>rt          :action Stop<CR>

" =============== 窗口  t ==================
map  tv                  :action ViewBreakpoints<CR>
map  te                  :action RecentFiles<CR>
map  tp                  :action ActivateProjectToolWindow<CR>
map  tt                  :action ActivateTerminalToolWindow<CR>
map  tb                  :action ToggleLineBreakpoint<cr>

" =============== 文件内部窗口 leader t ==================
map  <leader>tn          :action Generate<CR>
map  <leader>ts          :action ToggleFullScreen<CR>
map  <leader>ti          :action SelectIn<CR>
map  <leader>tg          :action RecentProjectListGroup<CR>
map  <leader>tb          :set splitbelow<CR>:split<CR>
map  <leader>tl          :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

map  mm                  :action ToggleBookmark<cr>
map  ms                  :action ShowBookmarks<CR>

" =============== git leader g  ==================
map  <leader>gb          :action Annotate<cr>
map  <leader>gl          :action Vcs.UpdateProject<cr>
map  <leader>gp          :action Git.Pull<cr>


map  <leader>o           :action OptimizeImports<CR>
map  <leader>a           :action ShowIntentionActions<CR>

" =============== 文件 leader r ==================
map  <leader>rf          :action RenameFile<CR>
map  <leader>re          :action RenameElement<CR>


