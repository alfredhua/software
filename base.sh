#!/bin/sh

source $SOFTWARE_PATH/soft/path.sh

## MAVEN
alias mc="mvn clean "
alias mcc="mvn clean && mvn compile"
alias mcci="mvn clean && mvn compile && mvn install"
alias mccid="mvn clean && mvn compile && mvn install && mvn deploy"
alias md="mvn dependency:tree"

## GIT
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

## CENTOS
alias c='clear'
alias j='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias sshali="ssh root@39.98.143.124"
alias ssh105="ssh root@192.168.0.105"
alias ssh105y="ssh -oPort=6000 root@39.98.143.124"
alias ssh107="ssh root@192.168.0.107"

## DOCKER
alias denter="enter"
alias compstart="compose_start"
alias comstop="compose_stop"

function enter(){
    docker exec -it $1 bash
}

function compose_start(){
   docker-compose -f $1 up -d
}

function compose_stop(){
   docker-compose -f $1 down
}

## NODE 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias nrs="npm run start"
alias nrdev="npm run dev"
alias ni="npm install"
alias nig="npm_install_g"

function npm_install_g(){
    npm install $1 -g
}

## VIM
#  ln -s ~/software/soft/vim/nvim/config/init.vim ~/.config/nvim/init.vim 
#  ln -s ~/software/soft/vim/ideavimrc  ~/.ideavimrc
alias vi="nvim"
alias vim="nvim"

## PYTHON
alias python="python3"
alias py="python3"
alias pip="pip3"

## 项目管理相关
MANAGE_HOME="~/workspace/self/project"
alias jm="cd $MANAGE_HOME"
alias msiterun="cd $MANAGE_HOME/server && ./gradlew :web:web-site:bootRun "
alias madminrun="cd $MANAGE_HOME/server && ./gradlew :web:web-admin:bootRun "

KEEPER_HOME="~/workspace/jd/keeper"
alias keeper="cd $KEEPER_HOME"
alias pk="cd $KEEPER_HOME/pinkong "
alias keeper="cd $KEEPER_HOME/pop-keeper"

PUNISH_HOME="~/workspace/jd/punish"
alias punish=" $PUNISH_HOME"
alias rule="$PUNISH_HOME/pop-rule-decision"
alias legal="$PUNISH_HOME/pop-legal-center "
alias exe="$PUNISH_HOME/pop-execution"
alias man="$PUNISH_HOME/pop-legal-man"
alias shop="$PUNISH_HOME/pop-legal-shop"
