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


		Plug 'preservim/tagbar' " 函数窗口预览
		Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示
		Plug 'tpope/vim-fugitive'  " git 操作
		Plug 'tpope/vim-surround'        " vim 环绕输入
		Plug 'suan/vim-instant-markdown' " markdown预览
		Plug 'mhinz/vim-startify'   " 历史打开
		Plug 'kevinhwang91/rnvimr'  " 文件浏览
		Plug 'Lokaltog/vim-easymotion'   "快速定位
		Plug 'tommcdo/vim-exchange'   "单词交换cxw

		Plug '/usr/local/opt/fzf'     " 文件搜索
		Plug 'junegunn/fzf.vim'

call plug#end()

source ~/software/soft/nvim/config/plugins/theme.vim
source ~/software/soft/nvim/config/plugins/tagbar.vim

