#!/bin/sh

env_path=''
if [ "$(uname)"=="Darwin" ]
then
    env_path="`dirname $0`"
elif [ "$(expr substr $(uname -s) 1 5)"=="Linux" ]
then
    env_path="`pwd`"/"`dirname $0`"
fi

echo $env_path
####  migrate环境变量
MIGRATIONS_HOME=$env_path/mybatis-migrations
export MIGRATIONS=$MIGRATIONS_HOME/bin
export PATH=$MIGRATIONS:$PATH
############## end #############

####  gradle环境变量
GRADLE_HOME=$env_path/gradle/bin
export PATH=$GRADLE_HOME:$PATH
############## end #############

####  jad环境变量
JAD_HOME=$env_path/jad
export PATH=$JAD_HOME:$PATH
############## end #############

####  lein
LEIN_HOME=$env_path/soft/lein/
export PATH=$LEIN_HOME:$PATH
############## end #############


## 快捷脚本

##docker 相关
alias denter="$env_path/script/docker.sh enter $1"
alias dstart="$env_path/script/docker.sh start $1"
alias dstop="$env_path/script/docker.sh down $1"

## git相关
alias gstatus="$env_path/script/git.sh status"
alias gpull="$env_path/script/git.sh pull"
alias gpush="$env_path/script/git.sh push $1"
alias gdiff="$env_path/script/git.sh gdiff $1"
alias gche="$env_path/script/git.sh checkout $1"

alias c='clear'

## 项目相关

source $env_path/project/manage.sh
source $env_path/project/zrcaifu.sh

## 服务器相关

alias sshali="ssh root@39.98.143.124"
alias sshtx="ssh root@193.112.56.221"

alias ssh6="ssh root@192.168.1.6"
alias ssh9="ssh root@192.168.1.9"


