
## core-site.xml

```xml
   <property>
      <name>fs.default.name</name>
      <value>hdfs://127.0.0.1:8020</value>
    </property>



```


## hdfs-site.xml

```xml
 <property>
       <name>dfs.replication</name>
       <value>1</value>
 </property>

     ## 虚拟机中需要增加
    <property>
          <name>dfs.namenode.name.dir</name>
          <value>/opt/hadoop/namenode</value>
    </property>
    <property>
          <name>dfs.datanode.data.dir</name>
          <value>/opt/hadoop/datanode</value>
    </property>
```


## mapred-site.xml

```xml
   <property> 
      <name>mapreduce.framework.name</name> 
      <value>yarn</value> 
   </property>


```

## yarn-site.xml

```xml
<!-- Site specific YARN configuration properties -->
 <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
   </property>
```


## 格式化

hdfs namenode -format


## start-dfs.sh 


## start-yarn.sh


## http://127.0.0.1:8088/

## http://127.0.0.1:9870