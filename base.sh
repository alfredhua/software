#!/bin/sh
source $HOME/software/soft/path.sh
source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#source $HOME/software/script/alias.sh
source $HOME/software/script/deploy.sh

# Shell
alias sh_clear_sclipse='$HOME/software/script/clear_eclipse_temp_file.sh'
alias sh_install='$HOME/software/script/install.sh'

## 项目管理相关
WORK_SPACE="$HOME/workspace"

alias jblog="cd $WORK_SPACE/self/blog"
alias jsoft="cd $HOME/software"
alias jtest="cd $WORK_SPACE/self/test"
alias jpro="cd $WORK_SPACE/self/project"
alias jself="cd $WORK_SPACE/self"
alias jopen="cd $WORK_SPACE/open"

### jd
alias jd="cd $WORK_SPACE/jd"
alias jhg="cd $WORK_SPACE/jd/keeper"
alias jpk="cd $WORK_SPACE/jd/keeper/pinkong"
alias jkeeper="cd $WORK_SPACE/jd/keeper/pop-keeper"
alias jjc="$WORK_SPACE/jd/punish"
alias jrule="$WORK_SPACE/jd/punish/pop-rule-decision"
alias jlegal="$WORK_SPACE/jd/punish/pop-legal-center "
alias jexe="$WORK_SPACE/jd/punish/pop-execution"
alias jman="$WORK_SPACE/jd/punish/pop-legal-man"
alias jshop="$WORK_SPACE/jd/punish/pop-legal-shop"
alias jnote="$WORK_SPACE/jd/note"
