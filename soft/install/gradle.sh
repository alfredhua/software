#!/bin/sh
current_path=`pwd`

if [ ! -d $current_path/gradle ]; then
    cd $current_path && wget https://downloads.gradle-dn.com/distributions/gradle-6.0.1-bin.zip
    unzip -n gradle-6.0.1-bin.zip
    rm -rf gradle-6.0.1-bin.zip
    mv gradle-6.0.1 gradle
    echo '####  gradle环境变量' >> $current_path/tool/base.sh
    echo "GRADLE_HOME=$current_path/gradle/bin" >> $current_path/tool/base.sh
    echo 'export PATH=$GRADLE_HOME:$PATH'>> $current_path/tool/base.sh
    echo '############## end #############' >> $current_path/tool/base.sh
    echo " " >> $current_path/tool/base.sh
fi


