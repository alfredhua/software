" =============== theme ==================
syntax enable
if (has("termguicolors"))
	set termguicolors
endif
colorscheme OceanicNext 

lua << EOF
require("bufferline").setup{
	options = {
		numbers="ordinal",
		modified_icon = '●',
		show_buffer_icons = true
	}
}
EOF
