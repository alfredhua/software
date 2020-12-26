#!/bin/sh

ALL_PATH="/Users/hua/software/soft"

source $ALL_PATH/path.sh

## 快捷脚本

env_path="/Users/hua/software/tool"

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
