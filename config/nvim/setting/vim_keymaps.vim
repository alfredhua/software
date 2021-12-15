" =============== 搜索,替换相关 s ==================
noremap <LEADER>sf :Files<CR>
noremap <LEADER>sd :Fardo<CR>
noremap <LEADER>sr :Farr<CR>
noremap <LEADER>sc :Ack  ./*<left><left><left><left>

cnoreabbrev Ack Ack!

" =============== 窗口相关 t ==================
nnoremap <LEADER>tt :NERDTreeToggle<CR>
nnoremap <LEADER>to :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
nnoremap <LEADER>tb :TagbarToggle<CR>
nnoremap <LEADER>tm :TableModeToggle<CR>
nnoremap <LEADER>tr :NERDTreeRefreshRoot<CR>
nnoremap <LEADER>tj :set splitbelow<CR>:split<CR>
nnoremap <LEADER>tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

" =============== 格式化相关 g ==================
noremap <LEADER>gb :Git blame<CR>

" =============== help ==================
noremap <LEADER>hm :Maps<CR>
noremap <LEADER>hh :tab help <right>



autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufNewFile,BufRead *.html,*.hml set filetype=md
map <Leader> <Plug>(easymotion-prefix)
