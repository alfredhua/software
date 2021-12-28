map <Leader> <Plug>(easymotion-prefix)

cnoreabbrev Ack Ack!

nmap <silent> zt :TableModeToggle<CR>

" =============== 窗口相关 t ==================
nmap <silent> ta :Git blame<CR>
nmap <silent> tp :NERDTreeToggle<CR>
nmap <silent> tf :Ack  ./*<left><left><left><left>
nmap <silent> tr :Farr<CR>
nmap <silent> te :action RecentFiles<CR>
nmap <silent> tj :set splitbelow<CR>:split<CR>
nmap <silent> tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>

nmap <silent> gf :Files<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gt <Plug>(coc-translator-p)
let g:coc_snippet_next = '<C-e>'
let g:coc_snippet_prev = '<C-n>'

" =============== help ==================
nmap <LEADER>hm :Maps<CR>
nmap <LEADER>hh :tab help <right>

nmap <silent> <leader>1 :BufferGoto 1<CR>
nmap <silent> <leader>2 :BufferGoto 2<CR>
nmap <silent> <leader>3 :BufferGoto 3<CR>
nmap <silent> <leader>4 :BufferGoto 4<CR>
nmap <silent> <leader>5 :BufferGoto 5<CR>
nmap <silent> <leader>6 :BufferGoto 6<CR>
nmap <silent> <leader>7 :BufferGoto 7<CR>
nmap <silent> <leader>8 :BufferGoto 8<CR>


