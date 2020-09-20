#!/bin/sh

PROJECT_HOME="/Users/hua/workspace/self"
MANAGE_HOME=$PROJECT_HOME"/manage"

alias mpro="cd $PROJECT_HOME"
alias madmin="cd $MANAGE_HOME"
alias mact="cd $MANAGE_HOME && ./tool/dev/dev-start.sh actuator "
alias mservice="cd $MANAGE_HOME && ./tool/dev/dev-start.sh service "
alias msite="cd $MANAGE_HOME && ./tool/dev/dev-start.sh site "
alias madmin="cd $MANAGE_HOME && ./tool/dev/dev-start.sh admin "
alias mmq="cd $MANAGE_HOME && ./tool/dev/dev-start.sh mq "
alias mquartz="cd $MANAGE_HOME && ./tool/dev/dev-start.sh quartz "
