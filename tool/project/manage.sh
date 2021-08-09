#!/bin/sh

MANAGE_HOME="~/workspace/self/project"
alias m-ad="cd $MANAGE_HOME"
alias m-site="cd $MANAGE_HOME/server && ./gradlew :web:web-site:bootRun "
alias m-admin="cd $MANAGE_HOME/server && ./gradlew :web:web-admin:bootRun "


KEEPER_HOME="~/workspace/jd/keeper"
alias keeper="cd $KEEPER_HOME"
alias pk="cd $KEEPER_HOME/pinkong "
alias keeper="cd $KEEPER_HOME/pop-keeper"


PUNISH_HOME="~/workspace/jd/punish"
alias punish=" $PUNISH_HOME"
alias rule="$PUNISH_HOME/pop-rule-decision"
alias legal="$PUNISH_HOME/pop-legal-center "
alias execution="$PUNISH_HOME/pop-execution"
alias zlman="$PUNISH_HOME/pop-legal-man"
alias zlshop="$PUNISH_HOME/pop-legal-shop"