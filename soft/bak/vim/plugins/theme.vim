" ariline
let g:airline_theme='google_dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" oceanic
syntax enable
set t_Co=256
if (has("termguicolors"))
	set termguicolors
endif

colorscheme OceanicNext

