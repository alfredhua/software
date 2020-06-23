#!/bin/bash

## mac环境下：执行./tool/linux_install.sh即可
tool_dir=`pwd`;

echo '#!/bin/sh' > $tool_dir/tool/base.sh

# docker 安装
echo ' begin install docker '
yum install docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

$tool_dir/tool/docker/install.sh 
echo ' docker end  '


# mybatis_migration 安装
echo ' begin install migrateions '
$tool_dir/tool/install/migrateions.sh
echo ' end migrateions '

# jad 安装
echo ' begin install jad '
$tool_dir/tool/install/jad.sh
echo ' end jad '

# 钉钉内网穿透工具
echo ' begin install  pierced'
$tool_dir/tool/install/pierced.sh
echo ' end pierced '

# gradle 安装
echo ' begin install gradle'
$tool_dir/tool/install/gradle.sh
echo ' end gradle '

#openjdk8安装
echo ' begin install openjdk8'
$tool_dir/tool/install/openjdk8.sh
echo ' end openjdk8 '

# node 安装
echo ' begin install openjdk8'
$tool_dir/tool/install/node.sh
echo ' end openjdk8 '

## yarn 安装
echo ' begin install yarn'
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
yum install yarn
echo ' end yarn '
# --------------done--------------------------


