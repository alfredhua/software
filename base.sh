#!/bin/sh
source $HOME/software/soft/path.sh
source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/software/tool/git.sh
source $HOME/software/tool/maven.sh
source $HOME/software/tool/linux.sh
source $HOME/software/tool/docker.sh
source $HOME/software/tool/vim.sh

# Shell
alias shClearEclipse='$HOME/software/tool/clear_eclipse_temp_file.sh'
alias shInstall='$HOME/software/tool/install.sh'

## 项目管理相关
WORK_SPACE="$HOME/workspace"

alias runsite="cd $WORK_SPACE/self/project/server && ./gradlew :web:web-site:bootRun "
alias runadmin="cd $WORK_SPACE/self/project/server && ./gradlew :web:web-admin:bootRun "
alias iserver="cd $WORK_SPACE/self/project/server && idea ."
alias itest="cd $WORK_SPACE/self/test && idea ."

alias jblog="cd $WORK_SPACE/self/blog"
alias jsoft="cd $HOME/software"
alias jtest="cd $WORK_SPACE/self/test"
alias jpro="cd $WORK_SPACE/self/project"
alias jself="cd $WORK_SPACE/self"
alias jopen="cd $WORK_SPACE/open"

### jd
alias jhg="cd $WORK_SPACE/jd/keeper"
alias jpk="cd $WORK_SPACE/jd/keeper/pinkong"
alias jkeeper="cd $WORK_SPACE/jd/keeper/pop-keeper"

alias jjc="$WORK_SPACE/jd/punish"
alias jrule="$WORK_SPACE/jd/punish/pop-rule-decision"
alias jlegal="$WORK_SPACE/jd/punish/pop-legal-center "
alias jexe="$WORK_SPACE/jd/punish/pop-execution"
alias jman="$WORK_SPACE/jd/punish/pop-legal-man"
alias jshop="$WORK_SPACE/jd/punish/pop-legal-shop"

alias irule="cd $WORK_SPACE/jd/punish/pop-rule-decision && idea ."
alias ilegal="cd $WORK_SPACE/jd/punish/pop-legal-center && idea . "
alias iexe="cd $WORK_SPACE/jd/punish/pop-execution && idea ."
alias iman="cd $WORK_SPACE/jd/punish/pop-legal-man && idea ."
alias ishop="cd $WORK_SPACE/jd/punish/pop-legal-shop && idea ."

alias jnote="$WORK_SPACE/jd/note"
