#!/bin/sh

ALL_PATH="/Users/hua/software/soft"
env_path="/Users/hua/software/tool"

if [ $DEVIDE == 'JD' ]
then
    ALL_PATH="/Users/guozhenhua7/software/soft"
    env_path="/Users/guozhenhua7/software/tool"
else
fi

source $ALL_PATH/path.sh

##docker 相关
source $env_path/script/docker.sh

## git相关
source $env_path/script/git.sh

## centos操作习惯
source $env_path/script/centos.sh
## 项目相关
source $env_path/project/manage.sh
source $env_path/project/zrcaifu.sh

## 服务器相关

source $env_path/script/ssh.sh
