let  g:coc_snippet_next =      '<C-j>'
let  g:coc_snippet_prev =      '<C-k>'

nmap <silent>  Q      :q<CR>
nmap <silent>  <C-q>    :bd<CR>

map  <silent>  <Leader>  <Plug>(easymotion-prefix)

nmap <silent>  ss        :source ~/.config/nvim/init.vim<CR>

nmap <silent>  <leader>1  <Cmd>BufferLineGoToBuffer 1<CR>
nmap <silent>  <leader>2  <Cmd>BufferLineGoToBuffer 2<CR>
nmap <silent>  <leader>3  <Cmd>BufferLineGoToBuffer 3<CR>
nmap <silent>  <leader>4  <Cmd>BufferLineGoToBuffer 4<CR>
nmap <silent>  <leader>5  <Cmd>BufferLineGoToBuffer 5<CR>
nmap <silent>  <leader>6  <Cmd>BufferLineGoToBuffer 6<CR>
nmap <silent>  <leader>7  <Cmd>BufferLineGoToBuffer 7<CR>
nmap <silent>  <leader>8  <Cmd>BufferLineGoToBuffer 8<CR>
nmap <silent>  <leader>9  <Cmd>BufferLineGoToBuffer 9<CR>

" =============== bookmarks ==================
nmap <silent>   mm     <Plug>BookmarkToggle
nmap <silent>   mc     <Plug>BookmarkClearAll
nmap <silent>   ms     <Plug>BookmarkShowAll

" =============== help ==================
nmap <silent>   <LEADER>hm :Maps<CR>
nmap <silent>   <LEADER>hh :tab help <right>

" =============== 代码跳转g ==================
nmap <silent>   gd     <Plug>(coc-definition)
nmap <silent>   gD     :tab sp<CR><Plug>(coc-definition)
nmap <silent>   gy     <Plug>(coc-type-definition)
nmap <silent>   gi     <Plug>(coc-implementation)
nmap <silent>   gr     <Plug>(coc-references)
nmap <silent>   gt     <Plug>(coc-translator-p)

" =============== git 相关 ==================
nmap <silent>   <leader>gb :Git blame<CR>
nmap <silent>   <leader>gl :Git pull<CR>
nmap <silent>   <leader>gs :Git status<CR>

" =============== 窗口相关 t ==================
nmap <silent>   tp     :NERDTreeToggle<CR>
nmap <silent>   tr     :RnvimrToggle<CR>
nmap <silent>   tb     :Tagbar<CR>
nmap <silent>   tj     :set splitbelow<CR>:split<CR>
nmap <silent>   tl     :set nosplitright<CR>:vsplit<CR>:set splitright<CR>


" =============== telescope  ==================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" =============== leaderf ==================
" nmap <silent>  <leader>ff :Leaderf file<CR>
" nmap <silent>  <leader>fm :LeaderfMruCwd<CR>
" nmap <silent>  <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
" nmap <silent>  <leader>fp :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" nmap <silent>  <leader>fs :LeaderfRgInteractive<CR>
" nmap <unique>  <leader>fa <Plug>LeaderfRgCwordLiteralNoBoundary
" vmap <unique>  <leader>fa <Plug>LeaderfRgVisualLiteralNoBoundary <CR>


nmap <silent>  zt     :TableModeToggle<CR>

