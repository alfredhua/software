#!/bin/sh

source $HOME/software/soft/path.sh

## MAVEN
alias mc="mvn clean "
alias mcc="mvn clean && mvn compile"
alias mcci="mvn clean && mvn compile && mvn install"
alias mccid="mvn clean && mvn compile && mvn install && mvn deploy"
alias md="mvn dependency:tree"

## GIT
alias gstatus="git status"
alias gpull="git pull"
alias gpush="git_push" 
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
alias gporigin="git_push_origin"

function git_push(){
    git add . && git commit -m $1 && git push
}
function git_push_origin(){
    git push --set-upstream origin $1
}

## linux
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
alias denter="docker_enter"
alias dstart="docker_compose_start"
alias dstop="docker_compose_stop"

function docker_enter(){
    docker exec -it $1 bash
}
function docker_compose_start(){
    docker-compose -f $1 up -d
}
function docker_compose_stop(){
    docker-compose -f $1 down
}
## NODE 

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

MANAGE_HOME="$HOME/workspace/self/project"
alias jm="cd $MANAGE_HOME"
alias msiterun="cd $MANAGE_HOME/server && ./gradlew :web:web-site:bootRun "
alias madminrun="cd $MANAGE_HOME/server && ./gradlew :web:web-admin:bootRun "

KEEPER_HOME="$HOME/workspace/jd/keeper"
alias jhg="cd $KEEPER_HOME"
alias jpk="cd $KEEPER_HOME/pinkong "
alias jkeeper="cd $KEEPER_HOME/pop-keeper"

PUNISH_HOME="$HOME/workspace/jd/punish"
alias jjc="$PUNISH_HOME"

alias jrule="$PUNISH_HOME/pop-rule-decision"
alias jlegal="$PUNISH_HOME/pop-legal-center "
alias jexe="$PUNISH_HOME/pop-execution"
alias jman="$PUNISH_HOME/pop-legal-man"
alias jshop="$PUNISH_HOME/pop-legal-shop"


alias irule="idea $PUNISH_HOME/pop-rule-decision"
alias ilegal="idea $PUNISH_HOME/pop-legal-center "
alias iexe="idea $PUNISH_HOME/pop-execution"
alias iman="idea $PUNISH_HOME/pop-legal-man"
alias ishop="idea $PUNISH_HOME/pop-legal-shop"

alias jnote="$HOME/workspace/jd/note"
