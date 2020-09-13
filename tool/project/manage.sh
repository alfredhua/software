#!/bin/sh

PROJECT_HOME="/Users/hua/workspace/self"
MANAGE_HOME=$PROJECT_HOME"/manage"

alias topro="cd $PROJECT_HOME"
alias toadmin="cd $MANAGE_HOME"
alias m-actuator="cd $MANAGE_HOME && ./tool/dev/dev-start.sh actuator "
alias m-service="cd $MANAGE_HOME && ./tool/dev/dev-start.sh service "
alias m-site="cd $MANAGE_HOME && ./tool/dev/dev-start.sh site "
alias m-admin="cd $MANAGE_HOME && ./tool/dev/dev-start.sh admin "
alias m-mq="cd $MANAGE_HOME && ./tool/dev/dev-start.sh mq "
alias m-quartz="cd $MANAGE_HOME && ./tool/dev/dev-start.sh quartz "

