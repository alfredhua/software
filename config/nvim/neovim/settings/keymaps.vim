map <Leader> <Plug>(easymotion-prefix)


nnoremap <silent> zt :TableModeToggle<CR>

cnoreabbrev Ack Ack!

" =============== 窗口相关 t ==================
nnoremap <silent> ta :Git blame<CR>
nnoremap <silent> tp :NERDTreeToggle<CR>
nnoremap <silent> tf :Ack  ./*<left><left><left><left>
nnoremap <silent> tr :Farr<CR>
nnoremap <silent> tj :set splitbelow<CR>:split<CR>
nnoremap <silent> tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

nnoremap <silent> gf :Files<CR>
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gD :tab sp<CR><Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> gt <Plug>(coc-translator-p)

let g:coc_snippet_next = '<C-e>'
let g:coc_snippet_prev = '<C-n>'

" =============== help ==================
nnoremap <LEADER>hm :Maps<CR>
nnoremap <LEADER>hh :tab help <right>

nnoremap <silent> <leader>1 :BufferGoto 1<CR>
nnoremap <silent> <leader>2 :BufferGoto 2<CR>
nnoremap <silent> <leader>3 :BufferGoto 3<CR>
nnoremap <silent> <leader>4 :BufferGoto 4<CR>
nnoremap <silent> <leader>5 :BufferGoto 5<CR>
nnoremap <silent> <leader>6 :BufferGoto 6<CR>
nnoremap <silent> <leader>7 :BufferGoto 7<CR>
nnoremap <silent> <leader>8 :BufferGoto 8<CR>


