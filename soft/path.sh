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
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  --no-use 

export PATH=$HOME/.nvm/versions/node/v14.14.0/bin:$PATH
