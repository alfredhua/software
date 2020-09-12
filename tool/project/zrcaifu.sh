#!/bin/sh


#### 财富项目目录

ZRCAIFU_HOME="/Users/hua/workspace/zrcf/"
### 财富VIP项目
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