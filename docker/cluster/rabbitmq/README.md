# 搭建步骤

- 执行docker-compose up -d
- 分别进入俩个容器：rabbitmq-plugins enable rabbitmq_management
- 进入rabbitmq2：
- 执行：rabbitmqctl stop_app 
- rabbitmqctl join_cluster rabbit@rabbitmq1
- rabbitmqctl start_app