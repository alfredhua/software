" coc
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-eslint',
	\ 'coc-html',
	\ 'coc-json',
	\ 'coc-pyright',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-vetur',
  \ 'coc-tsserver',
	\ 'coc-vimlsp']

nmap <Space>ct <Plug>(coc-translator-p)
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <Space>cp <Plug>(coc-translator-p)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
let g:coc_snippet_next = '<C-e>'
let g:coc_snippet_prev = '<C-n>'

