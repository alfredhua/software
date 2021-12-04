#!/bin/sh

## zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "source $HOME/software/base.sh " >> $HOME/.zshrc

## brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install neovim zsh-syntax-highlighting fzf ack ctags-exuberant diff-so-fancy

pip3 install ranger-fm pynvim

## vim
ln -s ~/software/soft/nvim/init.vim   ~/.config/nvim/init.vim
ln -s ~/software/soft/nvim/init.vim  ~/.ideavimrc
