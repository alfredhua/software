#!/bin/sh
source $HOME/software/script/install.sh
#===========  修改程序图标排列个数 =======================
function change_dock(){
	defaults write com.apple.dock springboard-columns -int 11 && defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
}

change_dock
install_brew
install_zsh
install_neovim
install_nvm
install_pierced
