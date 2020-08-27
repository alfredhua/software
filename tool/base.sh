#!/bin/sh
env_path='/Users/hua/workspace/software'

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
alias enter=$env_path/tool/exec-docker.sh $1
alias c='clear'
alias status="$env_path/tool/git/git.sh status"
alias pull="$env_path/tool/git/git.sh pull"
alias push="$env_path/tool/git/git.sh push $1"
source $env_path/project/manage.sh
source $env_path/project/zrcaifu.sh
