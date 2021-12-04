if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call plug#begin('~/.config/plugged')

		Plug 'preservim/tagbar' 
		Plug 'tpope/vim-surround'
  	Plug 'mhinz/vim-startify'
  	Plug 'kshenoy/vim-signature'
		

		" =========== theme ============
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'morhetz/gruvbox'

call plug#end()

" =========== theme ============
if (has("termguicolors"))
	set termguicolors
endif
set background=dark
colorscheme gruvbox

let g:airline_theme='google_dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'



