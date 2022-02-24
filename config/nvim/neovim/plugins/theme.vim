" =============== theme ==================
syntax enable
if (has("termguicolors"))
	set termguicolors
endif

let g:gruvbox_italic=1
" colorscheme OceanicNext 
colorscheme gruvbox

lua << EOF
require("bufferline").setup{
	options = {
		numbers="ordinal",
		modified_icon = '●',
		show_buffer_icons = true
	}
}
EOF
