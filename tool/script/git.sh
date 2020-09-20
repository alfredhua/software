#!/bin/sh


alias gstatus="git status"
alias gpull="git pull"
alias gpush="push $1"
alias gdiff="git diff"
alias gcheck="git checkout"
alias gmerge="git merge"
alias grebase="git rebase"
alias gstash="git stash"
alias gpick="git cherry-pick"
alias greset="git reset"

function push(){
    git add .
    git commit -m $1
    git push
}
