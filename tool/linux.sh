#!/bin/sh

alias lsh='ls -alh'
alias c='clear'
alias x='exit'
alias j='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias jsearch="cd_search_path"
alias sshali="ssh root@39.98.143.124"
alias sshh="ssh root@192.168.0.105"
alias sshy="ssh root@192.168.1.9"

function cd_search_path(){
	cd $(find * -type d | fzf)
}

