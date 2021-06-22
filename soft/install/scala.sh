#!/bin/sh
##  下载脚本

current_path=`pwd`


if [ ! -d $current_path/scala ]; then
    cd $current_path && wget https://downloads.lightbend.com/scala/2.11.1/scala-2.11.1.tgz
    tar -xzvf scala-2.11.1.tgz
    rm -rf scala-2.11.1.tgz
    mv scala-2.11.1 scala
fi


