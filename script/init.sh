#!/bin/sh

## zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "source $HOME/software/base.sh " >> $HOME/.zshrc

# change zsh theme ZSH_THEME="awesomepanda"

## brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install zsh-syntax-highlighting fzf ack ctags-exuberant diff-so-fancy ripgrep

pip3 install ranger-fm pynvim

curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
## vim
ln -s ~/software/config/nvim/init.vim   ~/.config/nvim/init.vim
ln -s ~/software/config/nvim/init.vim  ~/.ideavimrc

