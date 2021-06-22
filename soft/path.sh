#!/bin/sh

####  gradle环境变量

soft_path=$SOFTWARE_PATH/soft

GRADLE_HOME=$soft_path/gradle/bin
export PATH=$GRADLE_HOME:$PATH

####  jad环境变量
JAD_HOME=$soft_path/jad
export PATH=$JAD_HOME:$PATH


####  migrate环境变量
MIGRATIONS_HOME=$soft_path/mybatis-migrations
export MIGRATIONS=$MIGRATIONS_HOME/bin
export PATH=$MIGRATIONS:$PATH

####  maven环境变量
MAVEN_HOME=$soft_path/maven
export MAVEN=$MAVEN_HOME/bin
export PATH=$MAVEN:$PATH

## SPARK
export SPARK_HOME=$soft_path/spark
export PATH=$SPARK_HOME/bin:$PATH

## hive
export HIVE_HOME=$soft_path/hive
export PATH=$HIVE_HOME/bin:$PATH

## hadoop
export HADOOP_HOME=$soft_path/hadoop
export HADOOP_MAPRED_HOME=$HADOOP_HOME 
export HADOOP_COMMON_HOME=$HADOOP_HOME 
export HADOOP_HDFS_HOME=$HADOOP_HOME 
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin/

## hbase
export HBASE_HOME=$soft_path/hbase
export PATH=$PATH:$HBASE_HOME/bin/

## JAVA

name=`uname`
if [ $name != 'Darwin' ]
then
    export JAVA_HOME=$soft_path/java
    export PATH=$PATH:$JAVA_HOME/bin/
else
fi

## scala
export SCALA_HOME=$soft_path/scala
export PATH=$PATH:$SCALA_HOME/bin/


#### node 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
