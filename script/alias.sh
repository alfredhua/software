#!/bin/sh
##============== docker ============
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

##============== python ============
alias python="python3"
alias py="python3"
alias pip="pip3"

##============== vim ============
alias vi="nvim"
alias vim="nvim"
alias vihost="vim /etc/hosts"
alias viinit="vim $HOME/software/soft/nvim/config/init.vim"
alias viidea="vim $HOME/software/soft/nvim/config/setting/idea_keymap.vim"
alias vibase="vim $HOME/software/base.sh"
alias vipath="vim $HOME/software/soft/path.sh"
alias viblog="cd $HOME/workspace/self/blog/ && vim ."

