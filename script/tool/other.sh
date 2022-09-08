#! /bin/sh

#=========== change_dock =========
alias o_dock="change_dock"
function change_dock(){
  defaults write com.apple.dock springboard-columns -int 11 && defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
}

