#!/bin/bash

## mac环境下：执行./tool/install.sh即可

tool_dir=`pwd`;

# gradle 安装
$tool_dir/install/gradle.sh

# jad 安装
$tool_dir/install/jad.sh

# maven 安装
$tool_dir/install/maven.sh

# mybatis_migration
$tool_dir/install/migrateions.sh

## node 按照
$tool_dir/install/node.sh

# jdk8安装
$tool_dir/install/openjdk8.sh

# 钉钉内网穿透工具
$tool_dir/install/pierced.sh

