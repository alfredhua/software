#!/bin/sh
export LANG='UTC-8'
export LC_ALL="zh_CN.UTF-8"
SOFT_WARE_PATH=$HOME/software/soft
# 设置

#### node 
export NVM_DIR="$HOME/.nvm"
nvm() { . "$NVM_DIR/nvm.sh" ; nvm $@ ; }
export PATH=$HOME/.nvm/versions/node/v12.22.10/bin/:$PATH

####  maven环境变量
if [ -d "$HOME/software/soft/maven" ];then
  MAVEN_HOME=$SOFT_WARE_PATH/maven
  export PATH=$MAVEN_HOME/bin:$PATH
fi

####  gradle环境变量
if [ -d "$HOME/software/soft/gradle" ];then
  GRADLE_HOME=$SOFT_WARE_PATH/gradle
  export PATH=$GRADLE_HOME/bin:$PATH
fi

## SPARK
if [ -d "$HOME/software/soft/spark" ];then
  export SPARK_HOME=$SOFT_WARE_PATH/spark
  export PATH=$SPARK_HOME/bin:$PATH
fi

## scala
if [ -d "$HOME/software/soft/scala" ];then
  export SCALA_HOME=$SOFT_WARE_PATH/scala
  export PATH=$PATH:$SCALA_HOME/bin/
fi

## flink
if [ -d "$HOME/software/soft/flink" ];then
  export FLINK_HOME=$SOFT_WARE_PATH/flink
  export PATH=$PATH:$FLINK_HOME/bin/
fi

## jdk8
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home
export JAVA_17_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.4.1.jdk/Contents/Home
export JAVA_HOME=$JAVA_8_HOME
export PATH=$PATH:$JAVA_HOME/bin/
alias java11="export JAVA_HOME=$JAVA_11_HOME"
alias java17="export JAVA_HOME=$JAVA_17_HOME"


if [ -d "/opt/homebrew/bin" ];then
  export PATH=/opt/homebrew/bin:$PATH
fi

## neovim
if [ -d "$HOME/software/soft/neovim" ];then
  export NEOVIM_HOME=$SOFT_WARE_PATH/neovim
  export PATH=$PATH:$NEOVIM_HOME/bin/
fi
