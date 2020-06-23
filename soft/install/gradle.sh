#!/bin/sh
current_path=`pwd`

if [ ! -d $current_path/gradle ]; then
    cd $current_path && wget https://downloads.gradle-dn.com/distributions/gradle-6.0.1-bin.zip
    unzip -n gradle-6.0.1-bin.zip
    rm -rf gradle-6.0.1-bin.zip
    mv gradle-6.0.1 gradle
fi


