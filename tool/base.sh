#!/bin/sh
current_path=`pwd`

alias enter=$current_path/exec-docker.sh $1

####  migrate环境变量
MIGRATIONS_HOME=/Users/hua/workspace/software/mybatis-migrations
export MIGRATIONS=$MIGRATIONS_HOME/bin
export PATH=$MIGRATIONS:$PATH
############## end #############


####  jad环境变量
JAD_HOME=/Users/hua/workspace/software/jad
export PATH=$JAD_HOME:$PATH
############## end #############

