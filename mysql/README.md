#


- grant replication slave on *.* to 'test'@'%' identified by 'test1234';
- flush privileges;
- show master status;
+------------------+----------+--------------+------------------+-------------------+
| File             | Position | Binlog_Do_DB | Binlog_Ignore_DB | Executed_Gtid_Set |
+------------------+----------+--------------+------------------+-------------------+
| mysql-bin.000004 |      589 |              |                  |                   |
+------------------+----------+--------------+------------------+-------------------+

- start slave;

-  change master to master_host='10.5.0.3', master_user='test', master_password='test1234', master_port=3339, master_log_file='mysql-bin.000004', master_log_pos=589, master_connect_retry=30;

- stop slave;
