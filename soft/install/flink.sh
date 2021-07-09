#!/bin/sh
## fllink 下载脚本

current_path=`pwd`


if [ ! -d $current_path/flink ]; then
    cd $current_path && wget https://ftp.jaist.ac.jp/pub/apache/flink/flink-1.13.1/flink-1.13.1-bin-scala_2.11.tgz 
    tar -xzvf flink-1.13.1-bin-scala_2.11.tgz
    rm -rf flink-1.13.1-bin-scala_2.11.tgz
    mv flink-1.13.1 flink
fi





