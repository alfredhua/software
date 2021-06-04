#!/bin/sh
## Spark 下载脚本

current_path=`pwd`


if [ ! -d $current_path/hadoop ]; then
    cd $current_path && wget https://ftp.jaist.ac.jp/pub/apache/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz
    tar -xzvf hadoop-3.2.2.tar.gz
    rm -rf hadoop-3.2.2.tar.gz
    mv hadoop-3.2.2 hadoop
fi





