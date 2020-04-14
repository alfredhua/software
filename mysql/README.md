#

- 执行docker-compose up -d
- 进入mysql-master容器，进入mysql：
- 执行：grant replication slave on *.* to 'test'@'%' identified by 'test1234';
- 执行：flush privileges;
- 查看：show master status;
+------------------+----------+--------------+------------------+-------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set |
+------------------+----------+--------------+------------------+-------------------+
| mysql-bin.000004 |      589 |              |                  |                   |
+------------------+----------+--------------+------------------+-------------------+

- 进入mysql-slave容器，进入mysql：
- 以下替换自己的信息即可，执行： change master to master_host='10.5.0.3', master_user='test', master_password='test1234', master_port=3339, master_log_file='mysql-bin.000004', master_log_pos=589, master_connect_retry=30;
- start slave;
- 查看：show slave status;
- 如果执行错误，stop slave,再次改变信息，重新start slave;