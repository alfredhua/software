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

#===========  nvm =======================
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion 

nvm install v12.22.10

