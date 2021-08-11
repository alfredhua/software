#!/bin/sh

## git
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
alias gclone="git clone"
alias gshow="git show"
alias gporigin="push_origin $1"

function push_origin(){
   git push --set-upstream origin $1    
}


function push(){
    git add .
    git commit -m $1
    git push
}

## mvn
alias cci="mvn clean && mvn compile && mvn install"
alias ccid="mvn clean && mvn compile && mvn install && mvn deploy"
