" =============== vim公共设置 ==================
source ~/software/soft/nvim/config/setting/settings.vim
source ~/software/soft/nvim/config/setting/keymaps.vim

if has('ide')
	" =============== idea配置 ==================
	source ~/software/soft/nvim/config/setting/idea_keymaps.vim
else
	source ~/software/soft/nvim/config/plugins/plug_list.vim
endif

