#!/bin/sh

## 项目管理相关
alias gclean="./gradlew clean"


WORK_SPACE="$HOME/workspace"
alias jblog="cd $WORK_SPACE/self/blog"
alias jsoft="cd $HOME/software"
alias jtest="cd $WORK_SPACE/self/test"
alias jself="cd $WORK_SPACE/self"
alias jopen="cd $WORK_SPACE/open"

# =============== project ==================
alias jpro="cd $WORK_SPACE/self/project"
alias pbuildcommon="cd $WORK_SPACE/self/project && ./tool/build-common.sh"
alias pdevadmin="cd $WORK_SPACE/self/project && ./tool/dev-start.sh admin"
alias pdevsite="cd $WORK_SPACE/self/project && ./tool/dev-start.sh site"
alias pdevadmin="cd $WORK_SPACE/self/project && ./tool/dev-start.sh admin"
alias pdevwebadmin="cd $WORK_SPACE/self/project/web-admin && npm run dev"
alias pdevwebsite="cd $WORK_SPACE/self/project/web-site && npm run dev"

# =============== jd ==================
alias jd="cd $WORK_SPACE/jd"
alias jpk="cd $WORK_SPACE/jd/pinkong"
alias jkeeper="cd $WORK_SPACE/jd/pop-keeper"
alias jrule="$WORK_SPACE/jd/pop-rule-decision"
alias jlegal="$WORK_SPACE/jd/pop-legal-center "
alias jexe="$WORK_SPACE/jd/pop-execution"
alias jman="$WORK_SPACE/jd/pop-legal-man"
alias jshop="$WORK_SPACE/jd/pop-legal-shop"
alias jnote="$WORK_SPACE/jd/note"
