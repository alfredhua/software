#!/bin/sh


#### 财富项目目录

ZRCAIFU_HOME="/Users/hua/workspace/zrcf/"
### 财富VIP项目
alias rui-ssh3="ssh root@39.106.248.43"
alias rui-ssh9="ssh root@47.94.191.9"
alias rui-ceshi="ssh root@182.92.0.181"
alias rui-boss="ssh rui@123.56.231.77"
alias rui-ziben="ssh root@123.56.226.227"

alias ping-ssh1="ssh root@39.98.121.248";
alias ping-ssh2="ssh root@39.98.122.135";

alias test2="ssh root@10.5.0.2"
alias test3="ssh root@10.5.0.3"
alias test4="ssh root@10.5.0.4"

alias vip=$ZRCAIFU_HOME"/zrcf-vip/red-all"
alias sdmain="cd $vip && ./tools/start.sh dev-main"
alias sdadmin="cd $vip && ./tools/start.sh dev-admin"
alias sdsite="cd $vip && ./tools/start.sh dev-site"
alias sdmobile="cd $vip && ./tools/start.sh dev-mobile"
alias sdmq="cd $vip && ./tools/start.sh dev-mq"
alias sdquartz="cd $vip && ./tools/start.sh dev-quartz"


ZB_HOME="/Users/hua/workspace/zrcf/ziben-website"
alias zb-service="cd $ZB_HOME && ./tool/start.sh service "
alias zb-site="cd $ZB_HOME && ./tool/start.sh site "
alias zb-manage="cd $ZB_HOME && ./tool/start.sh manage "