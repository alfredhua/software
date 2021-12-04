" =============== 搜索,替换相关 s ==================
noremap sf :Files<CR>
noremap sc :Ack  ./*<left><left><left><left>
noremap sd :Fardo<CR>
noremap sr :Farr<CR>

" =============== 窗口相关 t ==================
nnoremap to :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
nnoremap tb :TagbarToggle<CR>
nnoremap tm :TableModeToggle<CR>
nnoremap tr :NERDTreeRefreshRoot<CR>
nnoremap tj :set splitbelow<CR>:split<CR>
nnoremap tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

" =============== 格式化相关 g ==================
xmap ga <Plug>(EasyAlign)
map ga <Plug>(EasyAlign)
noremap <LEADER>gb :Git blame<CR>

" =============== help ==================
noremap <LEADER>hm :Maps<CR>
noremap <LEADER>hh :tab help <right>

cnoreabbrev Ack Ack!


autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufNewFile,BufRead *.html,*.hml set filetype=md
map <Leader> <Plug>(easymotion-prefix)
