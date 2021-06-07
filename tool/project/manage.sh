#!/bin/sh

MANAGE_HOME=~/workspace/self/project
alias mad="cd $MANAGE_HOME"
alias mact="cd $MANAGE_HOME/server && ./gradlew :web:web-actuator:bootRun "
alias mservice="cd $MANAGE_HOME/server && ./gradlew :web:web-service:bootRun "
alias msite="cd $MANAGE_HOME/server && ./gradlew :web:web-site:bootRun "
alias madmin="cd $MANAGE_HOME/server && ./gradlew :web:web-admin:bootRun "
alias mmq="cd $MANAGE_HOME/server && ./gradlew :web:web-mq:bootRun "
alias mquartz="cd $MANAGE_HOME/server && ./gradlew :web:web-quartz:bootRun "
