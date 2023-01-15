

let g:coc_config_home = '~/software/config/nvim/'

let g:coc_global_extensions = [
			\ 'coc-css',
			\ 'coc-html',
			\ 'coc-xml',
			\ 'coc-tsserver',
			\ 'coc-pyright',
			\ 'coc-syntax',
			\ 'coc-json',
			\ 'coc-translator',
			\ 'coc-vetur',
			\ 'coc-tsserver',
			\ 'coc-imselect',
			\ 'coc-java',
			\ 'coc-vimlsp']


nmap <leader>rn <Plug>(coc-rename)

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


command! -nargs=0 Format :call CocActionAsync('format')


" autocmd CursorHold * silent call CocActionAsync('highlight')

