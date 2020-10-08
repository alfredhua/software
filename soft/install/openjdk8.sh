#!/bin/sh
current_path=`pwd`


brew tap homebrew/cask-versions

brew cask install java8


# yum install java-1.8.0-openjdk* -y

# brew tap homebrew/cask-versions

# cp $current_path/tool/install/soft/jdk-8u241-linux-x64.tar.gz .
# tar -xzvf jdk-8u241-linux-x64.tar.gz
# mv jdk1.8.0_241 jdk8 
# rm -rf jdk-8u241-linux-x64.tar.gz

# echo "JAVA_HOME=$current_path/jdk8" >> $current_path/tool/base.sh
# echo "export CLASS_PATH=.:$current_path/jdk8/lib/dt.jar:$current_path/jdk8/lib/tools.jar:$current_path/jdk8/jre/lib" >> $current_path/tool/base.sh
# echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> $current_path/tool/base.sh
# echo " " >> $current_path/tool/base.sh
