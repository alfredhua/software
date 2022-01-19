nnoremap <silent> <leader>1 :BufferGoto 1<CR>
nnoremap <silent> <leader>2 :BufferGoto 2<CR>
nnoremap <silent> <leader>3 :BufferGoto 3<CR>
nnoremap <silent> <leader>4 :BufferGoto 4<CR>
nnoremap <silent> <leader>5 :BufferGoto 5<CR>
nnoremap <silent> <leader>6 :BufferGoto 6<CR>
nnoremap <silent> <leader>7 :BufferGoto 7<CR>
nnoremap <silent> <leader>8 :BufferGoto 8<CR>

" =============== help ==================
nnoremap <LEADER>hm :Maps<CR>
nnoremap <LEADER>hh :tab help <right>

map <Leader> <Plug>(easymotion-prefix)

" =============== 代码跳转g ==================
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'

nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gD :tab sp<CR><Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> gt <Plug>(coc-translator-p)

" =============== git 相关 ==================
nnoremap <silent> <leader>gb :Git blame<CR>
nnoremap <silent> <leader>gl :Git pull<CR>
nnoremap <silent> <leader>gs :Git status<CR>


" =============== 窗口相关 t ==================
nnoremap <silent> tp :NERDTreeToggle<CR>
nnoremap <silent> tj :set splitbelow<CR>:split<CR>
nnoremap <silent> tl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>


" =============== leaderf ==================
nnoremap <silent> gf :Leaderf file<CR>
nnoremap <silent> gm :LeaderfMruCwd<CR> 
nnoremap <silent> <leader>fs :LeaderfRgInteractive<CR> 
nmap <unique> <leader>fa <Plug>LeaderfRgCwordLiteralNoBoundary 
vmap <unique> <leader>fa <Plug>LeaderfRgVisualLiteralNoBoundary <CR>
noremap gp :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>

nnoremap <silent> zt :TableModeToggle<CR>

