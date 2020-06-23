#!/bin/sh

PROJECT_HOME="/Users/hua/workspace/self"

MANAGE_HOME=$PROJECT_HOME"/manage"

alias to-my-project="cd $PROJECT_HOME"
alias to-admin="cd $MANAGE_HOME"
alias m-actuator="cd $MANAGE_HOME && ./tool/dev/dev-start.sh actuator "
alias m-service="cd $MANAGE_HOME && ./tool/dev/dev-start.sh service "
alias m-site="cd $MANAGE_HOME && ./tool/dev/dev-start.sh site "
alias m-admin="cd $MANAGE_HOME && ./tool/dev/dev-start.sh admin "
alias m-mq="cd $MANAGE_HOME && ./tool/dev/dev-start.sh mq "
alias m-quartz="cd $MANAGE_HOME && ./tool/dev/dev-start.sh quartz "
alias ssh-site="ssh root@39.98.143.124"
alias ssh-server="ssh root@193.112.56.221"
