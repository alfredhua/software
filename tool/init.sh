#!/bin/sh

## zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "source $HOME/software/base.sh " >> $HOME/.zshr 

## brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install neovim
brew install zsh-syntax-highlighting
brew install fzf
brew install ack
## 函数 
brew install ctags-exuberant

## vim
ln -s ~/software/soft/vim/init.vim   ~/.config/nvim/init.vim
ln -s ~/software/soft/vim/ideavimrc  ~/.ideavimr

