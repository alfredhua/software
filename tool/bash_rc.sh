#!/bin/sh

current_path='/Users/hua/workspace/self/docker/soft'

####  migrate环境变量
MIGRATIONS_HOME=$current_path/mybatis-migrations
export MIGRATIONS=$MIGRATIONS_HOME/bin
export PATH=$MIGRATIONS:$PATH
############## end #############


####  gradle环境变量
GRADLE_HOME=$current_path/gradle/bin
export PATH=$GRADLE_HOME:$PATH
############## end #############

####  jad环境变量
JAD_HOME=$current_path/jad
export PATH=$JAD_HOME:$PATH
############## end #############