#!/bin/sh
source $HOME/software/script/project/pro.sh
source $HOME/software/script/project/deploy.sh

uname=`uname`

##============== docker ============
alias denter="docker_enter"
alias dstart="docker_compose_start"
alias dstop="docker_compose_stop"
alias dps="docker ps -a"
alias dlogs="docker_logs"
alias dinspect="docker_inspect"

function docker_inspect(){
    docker inspect $1 
}
function docker_logs(){
    docker logs $1 
}
function docker_enter(){
    docker exec -it $1 bash
}
function docker_compose_start(){
    docker-compose -f $1 up -d
}
function docker_compose_stop(){
    docker-compose -f $1 down
}

##============== GIT ============
alias gstatus="git status"
alias gpull="git pull"
alias gpush="git_push" 
alias gipush="git push" 
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
alias geignore="echo_ignore"

function git_checkout_search(){
    git checkout $(git branch -r | fzf)
}

function git_push(){
    git add . && git commit -m $1 && git push
}
function git_push_origin(){
    git push --set-upstream origin $1
}


function echo_ignore(){
	echo ".classpath" >> .gitignore
	echo ".factorypath" >> .gitignore
	echo ".project" >> .gitignore
	echo ".settings/" >> .gitignore
}


##============== GRADLE ============
alias gradleInstall="./gradlew clean && ./gradlew build && ./gradlew jar && ./gradlew publishToMavenLocal"

##============== Linux ============
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

##============== maven ============
alias mc="mvn clean "
alias mcc="mvn clean && mvn compile"
alias mcci="mvn clean && mvn compile && mvn install"
alias mccid="mvn clean && mvn compile && mvn install && mvn deploy"
alias mdt="mvn dependency:tree"

##============== node ============
alias nvu8="nvm use v8"
alias nvu12="nvm use v12"
alias nvd12="nvm alias default v12"
alias nvd8="nvm alias default v8"
alias nprs="npm run start"
alias npdev="npm run dev"
alias nps="npm run server"
alias npi="npm install"
alias npig="npm_install_g"

function npm_install_g(){
    npm install $1 -g
}


##============== vim ============
alias vi="nvim"
alias vim="nvim"
alias vihost="vim /etc/hosts"
alias viinit="vim $HOME/software/config/nvim/init.vim"
alias viidea="vim $HOME/software/config/nvim/setting/idea_keymap.vim"
alias vibase="vim $HOME/software/base.sh"
alias vipath="vim $HOME/software/soft/path.sh"
alias viblog="cd $HOME/workspace/self/blog/ && vim ."

##============== path ============
alias jdown="cd $HOME/Downloads"
alias jde="cd $HOME/Desktop"
alias jdoc="cd $HOME/Documents"

alias idea="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea"
##============== heap ============
alias heap="java_heap"
function java_heap(){
   cd $HOME/Downloads && java -Xmx4g -jar $HOME/software/soft/heap/ha457.jar
}

alias arthas="java -jar $HOME/software/soft/arthas/arthas-boot.jar"

alias ssh110="root@192.168.0.110"
