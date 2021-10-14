#!/bin/sh
source $HOME/software/soft/path.sh
source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
alias gcsearch="git_checkout_search"
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

function git_checkout_search(){
    git checkout $(git branch -r | fzf)
}

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
alias jsearch="cd_search_path"
function cd_search_path(){
    cd $(find * -type d | fzf)
}

alias sshali="ssh root@39.98.143.124"
alias ssh105="ssh root@192.168.0.105"
alias ssh105y="ssh -oPort=6000 root@39.98.143.124"
alias ssh107="ssh root@192.168.0.107"

## DOCKER
alias denter="docker_enter"
alias dstart="docker_compose_start"
alias dstop="docker_compose_stop"
alias dps="docker ps -a"

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

alias nprs="npm run start"
alias npdev="npm run dev"
alias nps="npm run server"
alias npi="npm install"
alias npig="npm_install_g"

alias nvu8="nvm use v8"
alias nvu12="nvm use v12"
alias nvd12="nvm alias default v12"
alias nvd8="nvm alias default v8"
function npm_install_g(){
    npm install $1 -g
}

## VIM
alias vi="nvim"
alias vim="nvim"

## PYTHON
alias python="python3"
alias py="python3"
alias pip="pip3"


## 项目管理相关

WORK_SPACE="$HOME/workspace"

alias jm="cd $WORK_SPACE/self/project"
alias runsite="cd $WORK_SPACE/self/project/server && ./gradlew :web:web-site:bootRun "
alias runadmin="cd $WORK_SPACE/self/project/server && ./gradlew :web:web-admin:bootRun "
alias iserver="cd $WORK_SPACE/self/project/server && idea ."

alias jblog="cd $WORK_SPACE/self/blog"
alias jsoftware="cd $HOME/software"

### jd
alias jhg="cd $WORK_SPACE/jd/keeper"
alias jpk="cd $WORK_SPACE/jd/keeper/pinkong "
alias jkeeper="cd $WORK_SPACE/jd/keeper/pop-keeper"

alias jjc="$WORK_SPACE/jd/punish"
alias jrule="$WORK_SPACE/jd/punish/pop-rule-decision"
alias jlegal="$WORK_SPACE/jd/punish/pop-legal-center "
alias jexe="$WORK_SPACE/jd/punish/pop-execution"
alias jman="$WORK_SPACE/jd/punish/pop-legal-man"
alias jshop="$WORK_SPACE/jd/punish/pop-legal-shop"

alias irule="cd $WORK_SPACE/jd/punish/pop-rule-decision && idea ."
alias ilegal="cd $WORK_SPACE/jd/punish/pop-legal-center && idea . "
alias iexe="cd $WORK_SPACE/jd/punish/pop-execution && idea ."
alias iman="cd $WORK_SPACE/jd/punish/pop-legal-man && idea ."
alias ishop="cd $WORK_SPACE/jd/punish/pop-legal-shop && idea ."

alias jnote="$WORK_SPACE/jd/note"
