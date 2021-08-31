#!/bin/sh

source $SOFTWARE_PATH/soft/path.sh

##docker 相关
source $SOFTWARE_PATH/tool/script/docker.sh

## git相关
source $SOFTWARE_PATH/tool/script/git.sh

## centos操作习惯
source $SOFTWARE_PATH/tool/script/centos.sh
## 项目相关
source $SOFTWARE_PATH/tool/project/manage.sh

## 服务器相关
source $SOFTWARE_PATH/tool/script/ssh.sh


alias vi="nvim"
alias vim="nvim"

alias py="python3"
alias pip="pip3"

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"