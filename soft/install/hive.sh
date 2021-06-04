#!/bin/sh
current_path=`pwd`

if [ ! -d $current_path/hive ]; then
    cd $current_path && wget https://ftp.jaist.ac.jp/pub/apache/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz
    tar -xzvf apache-hive-3.1.2-bin.tar.gz
    rm -rf apache-hive-3.1.2-bin.tar.gz
    mv apache-hive-3.1.2-bin hive
fi



