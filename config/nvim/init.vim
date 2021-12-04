source ~/software/config/nvim/setting/settings.vim
source ~/software/config/nvim/setting/keymaps.vim

if has('ide')
	" =============== idea配置 ==================
	source ~/software/config/nvim/setting/idea_keymaps.vim
else
	source ~/software/config/nvim/setting/vim_keymaps.vim
	source ~/software/config/nvim/plug.vim
endif
