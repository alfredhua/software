
## core-site.xml

```xml
  <property>
    <name>fs.default.name</name>
    <value>hdfs://127.0.0.1:8020</value>
  </property>

  <property>
     <name>hadoop.tmp.dir</name>
     <value>file:/Users/guozhenhua7/workspace/hadoop</value>
  </property>
```


## hdfs-site.xml

```xml
 <property>
       <name>dfs.replication</name>
       <value>1</value>
 </property>
```

## 格式化

hdfs namenode -format


## mapred-site.xml

```xml
  <property> 
      <name>mapreduce.framework.name</name> 
      <value>yarn</value> 
   </property>

   <property>
    <name>mapreduce.application.classpath</name> 
    <value>$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*</value>
  </property>

```

## yarn-site.xml

```xml
<!-- Site specific YARN configuration properties -->
 <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
   </property>
   <property>
        <name>yarn.resourcemanager.hostname</name>
        <value>zy1</value>
   </property>

```

## start-dfs.sh 


## start-yarn.sh


## http://127.0.0.1:8088/

## http://127.0.0.1:9870