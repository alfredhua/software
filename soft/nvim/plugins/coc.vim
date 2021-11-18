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
	\ 'coc-vimlsp']

nmap <Space>ct <Plug>(coc-translator-p)
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <Space>cp <Plug>(coc-translator-p)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'

