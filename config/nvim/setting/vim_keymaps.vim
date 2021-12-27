map <Leader> <Plug>(easymotion-prefix)

" =============== 搜索,替换相关 s ==================
noremap <c-o> :Files<CR>
noremap <LEADER>sd :Fardo<CR>
noremap <C-S-f>sr :Farr<CR>
noremap <LEADER>sc :Ack  ./*<left><left><left><left>

cnoreabbrev Ack Ack!

" =============== 窗口相关 t ==================
nnoremap <LEADER>tt :NERDTreeToggle<CR>
nnoremap <LEADER>to :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
"nnoremap <LEADER>tb :TagbarToggle<CR>
nnoremap <LEADER>tm :TableModeToggle<CR>
nnoremap <LEADER>tr :NERDTreeRefreshRoot<CR>
nnoremap <LEADER>tj :set splitbelow<CR>:split<CR>
nnoremap <LEADER>tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

" =============== coc ==================
nmap <Space>ct <Plug>(coc-translator-p)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
let g:coc_snippet_next = '<C-e>'
let g:coc_snippet_prev = '<C-n>'

" ===============  git ==================
noremap <LEADER>gb :Git blame<CR>

" =============== help ==================
noremap <LEADER>hm :Maps<CR>
noremap <LEADER>hh :tab help <right>


nnoremap <silent>  <leader>1 :BufferGoto 1<CR>
nnoremap <silent>  <leader>2 :BufferGoto 2<CR>
nnoremap <silent>  <leader>3 :BufferGoto 3<CR>
nnoremap <silent>  <leader>4 :BufferGoto 4<CR>
nnoremap <silent>  <leader>5 :BufferGoto 5<CR>
nnoremap <silent>  <leader>6 :BufferGoto 6<CR>
nnoremap <silent>  <leader>7 :BufferGoto 7<CR>
nnoremap <silent>  <leader>8 :BufferGoto 8<CR>
