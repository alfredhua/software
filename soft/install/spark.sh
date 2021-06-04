#!/bin/sh
## Spark 下载脚本

current_path=`pwd`


if [ ! -d $current_path/spark ]; then
    cd $current_path && wget https://ftp.kddi-research.jp/infosystems/apache/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz
    tar -xzvf spark-3.1.2-bin-hadoop3.2.tgz
    rm -rf spark-3.1.2-bin-hadoop3.2.tgz
    mv spark-3.1.2-bin-hadoop3.2 spark
fi


