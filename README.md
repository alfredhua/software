# 配置

###  环境变量
> source $HOME/software/base.sh

### 软件安装
  - brew install neovim
  - brew install zsh-syntax-highlighting
  - brew install fzf
  - brew install ack

### VIM 相关
  -  ln -s ~/software/soft/vim/init.vim   ~/.config/nvim/init.vim
  -  ln -s ~/software/soft/vim/ideavimrc  ~/.ideavimr
  -  vim 下安装所有插件： PlugInstall 

### ZSH
  -  cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
	-  echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
