" vim公共设置
source ~/software/soft/nvim/setting/settings.vim
source ~/software/soft/nvim/setting/keymaps.vim

if has('ide')
	" idea 中设置
	source ~/software/soft/nvim/idea/ideaMaps.vim
else
	"插件管理
	call plug#begin('~/.vim/plugged')

		Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}   " 树形目录
		Plug 'preservim/tagbar' " 函数窗口预览
		Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示
		Plug 'tpope/vim-fugitive'  " git 操作
		Plug 'tpope/vim-surround'        " vim 环绕输入
		Plug 'suan/vim-instant-markdown' " markdown预览
		Plug 'mhinz/vim-startify'   " 历史打开
		Plug 'kevinhwang91/rnvimr'  " 文件浏览
		Plug 'Lokaltog/vim-easymotion'   "快速定位\s
		Plug 'tommcdo/vim-exchange'   "单词交换cxw
		
		"搜索
		Plug '/usr/local/opt/fzf'     " 文件搜索
		Plug 'junegunn/fzf.vim'

		Plug 'brooth/far.vim'   " 内容搜索
		Plug 'preservim/nerdcommenter' " 注释插件
		Plug 'alvan/vim-closetag'  " 输入框匹配
		Plug 'jiangmiao/auto-pairs' " 自动匹配括号
		Plug 'mileszs/ack.vim'

		Plug 'terryma/vim-multiple-cursors'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}

		" 工具
		Plug 'SirVer/ultisnips'
		Plug 'honza/vim-snippets'     "代码片段
		Plug 'Chiel92/vim-autoformat'  " 格式化
		Plug 'junegunn/vim-easy-align' " 符号对齐
		Plug 'lambdalisue/suda.vim'  " 可读文件编辑

		" react
		Plug 'yuezk/vim-js'  " react 高亮
		Plug 'maxmellon/vim-jsx-pretty'

		" markdown
		Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
		Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
		Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
		" 主题
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'mhartington/oceanic-next'

	call plug#end()

	source ~/software/soft/nvim/vim/plugins/far.vim
	source ~/software/soft/nvim/vim/plugins/suda.vim
	source ~/software/soft/nvim/vim/plugins/theme.vim
	source ~/software/soft/nvim/vim/plugins/tagbar.vim
	source ~/software/soft/nvim/vim/plugins/closetag.vim
	source ~/software/soft/nvim/vim/plugins/markdown.vim
	source ~/software/soft/nvim/vim/plugins/nerdtree.vim
	source ~/software/soft/nvim/vim/plugins/snippets.vim
	source ~/software/soft/nvim/vim/plugins/commenter.vim
	source ~/software/soft/nvim/vim/plugins/gitgutter.vim
	source ~/software/soft/nvim/vim/plugins/coc.vim
	source ~/software/soft/nvim/vim/plugins/rnvimr.vim
	source ~/software/soft/nvim/vim/keymaps.vim

endif
