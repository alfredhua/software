let g:rnvimr_enable_ex = 1

let g:rnvimr_enable_bw = 1

let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

let g:rnvimr_edit_cmd = 'nvim'

highlight link RnvimrNormal CursorLine

let g:rnvimr_ranger_views = [
            \ {'minwikth': 90, 'ratio': []},
            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            \ {'maxwidth': 49, 'ratio': [1]}
            \ ]

" Customize the initial layout
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }
