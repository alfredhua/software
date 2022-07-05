#! /bin/sh
function change_dock(){
  defaults write com.apple.dock springboard-columns -int 11 && defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
}

change_dock
