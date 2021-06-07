
#!/bin/sh
## hbase 下载脚本

current_path=`pwd`


if [ ! -d $current_path/hbase ]; then
    cd $current_path && wget https://ftp.jaist.ac.jp/pub/apache/hbase/2.4.3/hbase-2.4.3-bin.tar.gz
    tar -xzvf hbase-2.4.3-bin.tar.gz
    rm -rf hbase-2.4.3-bin.tar.gz
    mv hbase-2.4.3 hbase
fi







