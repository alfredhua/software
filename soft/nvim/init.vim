source $HOME/software/soft/nvim/setting/settings.vim
source $HOME/software/soft/nvim/setting/keymaps.vim

"插件管理
call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'}   " 树形目录
	Plug 'Xuyuanp/nerdtree-git-plugin'  " git 显示 
	Plug 'tpope/vim-surround'        " vim 环绕输入
	Plug 'suan/vim-instant-markdown' " markdown预览
	Plug '/usr/local/opt/fzf'     " 文件搜索
	Plug 'junegunn/fzf.vim'
	Plug 'brooth/far.vim'   " 内容搜索

	Plug 'jiangmiao/auto-pairs'  " 括号自动匹配
	Plug 'preservim/nerdcommenter' " 注释插件 
	Plug 'majutsushi/tagbar'   " 方法窗口
	Plug 'mhinz/vim-startify'  "  打开展示最近历史记录
	Plug 'gcmt/wildfire.vim'   " 自动选择括号内容

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" 代码
	Plug 'alvan/vim-closetag' 
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Chiel92/vim-autoformat'
	Plug 'junegunn/vim-easy-align'
	Plug 'lambdalisue/suda.vim'  " 可读文件编辑
	Plug 'airblade/vim-gitgutter'

	Plug 'yuezk/vim-js'  " react 高亮
	Plug 'maxmellon/vim-jsx-pretty'

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


autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact


