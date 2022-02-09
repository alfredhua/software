#!/bin/sh

#===========  brew =======================
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install zsh-syntax-highlighting fzf ack ctags-exuberant diff-so-fancy ripgrep n

#===========  修改程序图标排列个数 =======================
defaults write com.apple.dock springboard-columns -int 11 && defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock

#===========  zsh =======================
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "source $HOME/software/base.sh " >> $HOME/.zshrc

#change zsh theme ZSH_THEME="awesomepanda"

#===========  vim =======================
curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh

ln -s ~/software/config/nvim/init.vim   ~/.config/nvim/init.vim
ln -s ~/software/config/nvim/init.vim  ~/.ideavimrc

pip3 install ranger-fm pynvim

#===========  node =======================
## sudo n v8.17.0
## sudo n v12.22.9


