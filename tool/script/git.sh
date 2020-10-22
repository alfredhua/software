#!/bin/sh


alias gstatus="git status"
alias gpull="git pull"
alias gpush="push $1"
alias gdiff="git diff"
alias gcheckout="git checkout"
alias gmerge="git merge"
alias grebase="git rebase"
alias gstash="git stash"
alias gpick="git cherry-pick"
alias greset="git reset"
alias gbranch="git branch"
alias glog="git log"
alias gadd="git add"

function push(){
    git add .
    git commit -m $1
    git push
}
