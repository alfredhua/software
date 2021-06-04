#!/bin/sh

## 环境变量配置

####  gradle环境变量
GRADLE_HOME=$ALL_PATH/gradle/bin
export PATH=$GRADLE_HOME:$PATH

####  jad环境变量
JAD_HOME=$ALL_PATH/jad
export PATH=$JAD_HOME:$PATH


####  migrate环境变量
MIGRATIONS_HOME=$ALL_PATH/mybatis-migrations
export MIGRATIONS=$MIGRATIONS_HOME/bin
export PATH=$MIGRATIONS:$PATH

####  maven环境变量
MAVEN_HOME=$ALL_PATH/maven
export MAVEN=$MAVEN_HOME/bin
export PATH=$MAVEN:$PATH

## SPARK
export SPARK_HOME=/Users/guozhenhua7/software/soft/spark
export PATH=$SPARK_HOME/bin:$PATH

#### node 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
