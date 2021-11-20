source $HOME/software/soft/nvim/setting/settings.vim
source $HOME/software/soft/nvim/setting/keymaps.vim
"插件管理
call plug#begin('~/.vim/plugged')

	Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}   " 树形目录
	Plug 'preservim/tagbar' " 函数窗口预览
	Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示
	Plug 'tpope/vim-surround'        " vim 环绕输入
	Plug 'suan/vim-instant-markdown' " markdown预览

	" 搜索
	Plug '/usr/local/opt/fzf'     " 文件搜索
	Plug 'junegunn/fzf.vim'
	Plug 'brooth/far.vim'   " 内容搜索
	Plug 'preservim/nerdcommenter' " 注释插件
	Plug 'alvan/vim-closetag'  " 输入框匹配

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

source $HOME/software/soft/nvim/plugins/far.vim
source $HOME/software/soft/nvim/plugins/suda.vim
source $HOME/software/soft/nvim/plugins/theme.vim
source $HOME/software/soft/nvim/plugins/tagbar.vim
source $HOME/software/soft/nvim/plugins/closetag.vim
source $HOME/software/soft/nvim/plugins/markdown.vim
source $HOME/software/soft/nvim/plugins/nerdtree.vim
source $HOME/software/soft/nvim/plugins/snippets.vim
source $HOME/software/soft/nvim/plugins/commenter.vim
source $HOME/software/soft/nvim/plugins/gitgutter.vim
source $HOME/software/soft/nvim/plugins/coc.vim

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufNewFile,BufRead *.html,*.hml set filetype=md
