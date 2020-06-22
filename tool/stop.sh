#!/bin/bash
current_path=`pwd`

# 启动mysql
cd $current_path/single/mysql && docker-compose down -d

# 启动redis
cd $current_path/single/redis && docker-compose down -d

# 启动zookeeper
cd $current_path/single/zookeeper && docker-compose down -d

# 启动rabbitmq
cd $current_path/single/rabbitmq && docker-compose down -d

# 启动nacos
cd $current_path/single/nacos && docker-compose down -d


# 启动consul
cd $current_path/single/consul && docker-compose down -d

# 启动 es
cd $current_path/single/elasticsearch && docker-compose down -d