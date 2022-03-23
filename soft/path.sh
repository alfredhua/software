#!/bin/sh
export LANG='UTC-8'
export LC_ALL="zh_CN.UTF-8"

SOFT_WARE_PATH=$HOME/software/soft

source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 设置

#### node 
export NVM_DIR="$HOME/.nvm"
nvm() { . "$NVM_DIR/nvm.sh" ; nvm $@ ; }
export PATH=$HOME/.nvm/versions/node/v12.22.10/bin/:$PATH

####  maven环境变量
MAVEN_HOME=$SOFT_WARE_PATH/maven
export MAVEN=$MAVEN_HOME/bin
export PATH=$MAVEN:$PATH

####  gradle环境变量
GRADLE_HOME=$SOFT_WARE_PATH/gradle/bin
export PATH=$GRADLE_HOME:$PATH

####  jad环境变量
# JAD_HOME=$SOFT_WARE_PATH/jad
# export PATH=$JAD_HOME:$PATH

####  migrate环境变量
# MIGRATIONS_HOME=$SOFT_WARE_PATH/mybatis-migrations
# export MIGRATIONS=$MIGRATIONS_HOME/bin
# export PATH=$MIGRATIONS:$PATH


## SPARK
# export SPARK_HOME=$SOFT_WARE_PATH/spark
# export PATH=$SPARK_HOME/bin:$PATH

## hive
# export HIVE_HOME=$SOFT_WARE_PATH/hive
# export PATH=$HIVE_HOME/bin:$PATH

## hadoop
# export HADOOP_HOME=$SOFT_WARE_PATH/hadoop
# export HADOOP_MAPRED_HOME=$HADOOP_HOME 
# export HADOOP_COMMON_HOME=$HADOOP_HOME 
# export HADOOP_HDFS_HOME=$HADOOP_HOME 
# export YARN_HOME=$HADOOP_HOME
# export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
# export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin/

## hbase
# export HBASE_HOME=$SOFT_WARE_PATH/hbase
# export PATH=$PATH:$HBASE_HOME/bin/


## scala
# export SCALA_HOME=$SOFT_WARE_PATH/scala
# export PATH=$PATH:$SCALA_HOME/bin/


## flink
# export FLINK_HOME=$SOFT_WARE_PATH/flink
# export PATH=$PATH:$FLINK_HOME/bin/

## jdk8
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home
# export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.13.jdk/Contents/Home
# export JAVA_17_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.1.jdk/Contents/Home

export JAVA_HOME=$JAVA_8_HOME
export PATH=$PATH:$JAVA_HOME/bin/

# export CLASS_PATH=.:$JAVA_HOME/bin:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar


# alias java11="export JAVA_HOME=$JAVA_11_HOME"
# alias java17="export JAVA_HOME=$JAVA_17_HOME"


## nvim
# export NVIM_HOME=$SOFT_WARE_PATH/nvim
 export PATH=$PATH:/opt/homebrew/bin


