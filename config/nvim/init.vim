source ~/software/config/nvim/settings/settings.vim
source ~/software/config/nvim/settings/keymaps.vim
			
if has('ide')
	" =============== idea配置 ==================
	source ~/software/config/nvim/idea/settings/keymaps.vim

else
	source ~/software/config/nvim/neovim/settings/keymaps.vim
	source ~/software/config/nvim/neovim/plugins/plug.vim
endif
