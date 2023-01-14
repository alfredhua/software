" =============== theme ==================
syntax enable
if (has("termguicolors"))
	set termguicolors
endif

colorscheme nightfox
lua << EOF
require("bufferline").setup{
	options = {
		numbers="ordinal",
		modified_icon = '●',
		show_buffer_icons = true
	}
}

require('lualine').setup()
EOF
