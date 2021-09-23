1. cd $HOME/.oh-my-zsh/plugins
  > #下载代码
  > git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
  > #自动配置
  > echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
2. 安装markdown插件
  >  添加 Plug 'suan/vim-instant-markdown'
  >  npm -g install instant-markdown-d 
