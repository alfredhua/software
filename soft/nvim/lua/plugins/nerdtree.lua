
let g:NERDTreeWinSize = 25 
let NERDTreeShowBookmarks=1 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$']  
let g:NERDTreeShowLineNumbers=0 
let g:NERDTreeHidden=0 
let NERDTreeDirArrows = 1


nnoremap tt :NERDTreeToggle<CR> 
