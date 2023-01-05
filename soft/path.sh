##!/bin/sh
export LANG='UTC-8'
export LC_ALL="zh_CN.UTF-8"

if [ -d "/opt/homebrew/bin" ];then
 export PATH=/opt/homebrew/bin:$PATH
fi

if [ -d "/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home" ];then
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home"
  export PATH=$PATH:$JAVA_HOME/bin
else
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm 
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
