"插件管理
call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}   " 树形目录
	Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示 
	Plug 'tpope/vim-surround'        " vim 环绕输入
	Plug 'suan/vim-instant-markdown' " markdown预览
	Plug '/usr/local/opt/fzf'     " 文件搜索
	Plug 'junegunn/fzf.vim'
	Plug 'brooth/far.vim'

	Plug 'mileszs/ack.vim'      " 文件内容搜索
	Plug 'jiangmiao/auto-pairs'  " 括号自动匹配
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdcommenter' " 注释插件 
	Plug 'majutsushi/tagbar'
	Plug 'mhinz/vim-startify'
	Plug 'gcmt/wildfire.vim'

	" 代码
	Plug 'alvan/vim-closetag'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Chiel92/vim-autoformat'
	Plug 'junegunn/vim-easy-align'
	Plug 'lambdalisue/suda.vim'  " 可读文件编辑
	Plug 'airblade/vim-gitgutter'

	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
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


" 脚本
lua << EOF
EOF

