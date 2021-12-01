# docker下搭建各种集群环境

## hadoop
- 执行 docker-compose -f hadoop.yml up -d
- 进入容器hadoop02，切换用户 su hadoop，执行 start-dfs.sh
- 进入容器hadoop03，切换用户 su hadoop，执行 start-yarn.sh

  