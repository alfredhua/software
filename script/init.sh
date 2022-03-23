#!/bin/sh

#===========  修改程序图标排列个数 =======================
function change_dock(){
	defaults write com.apple.dock springboard-columns -int 11 && defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
}

#===========  brew =======================
function install_brew(){
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew install neovim zsh-syntax-highlighting fzf ack ctags-exuberant diff-so-fancy ripgrep n
}

#===========  zsh =======================
#change zsh theme ZSH_THEME="awesomepanda"
function install_zsh(){
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
	echo "source $HOME/software/base.sh " >> $HOME/.zshrc
}

#===========  vim =======================
function install_neovim(){
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
	ln -s ~/software/config/nvim/init.vim   ~/.config/nvim/init.vim
	ln -s ~/software/config/nvim/init.vim  ~/.ideavimrc
	pip3 install ranger-fm pynvim
}

#===========  nvm =======================
function install_nvm(){
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	source $HOME/.zshrc
	nvm install v12.22.10
}

change_dock
install_brew
install_zsh
install_neovim
install_nvm
