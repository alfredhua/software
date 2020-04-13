
- 在当前目录下执行 docker-compose up -d
- 加入各个节点：注意替换自己的ip地址
    加入 redis-cli --cluster create 10.5.0.3:6391 10.5.0.3:6392 10.5.0.3:6393 10.5.0.3:6394 10.5.0.3:6395 10.5.0.3:6396 --cluster-replicas 1
- 连接测试：
    redis-cli -c -h 172.30.0.4 -p 6396   （-c 会在set和get的时候自动寻找对应的节点存储）
- 执行 cluster nodes 查看节点信息