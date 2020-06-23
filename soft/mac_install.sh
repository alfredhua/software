#!/bin/bash

## mac环境下：执行./tool/install.sh即可

tool_dir=`pwd`;

## 创建一个脚本，环境变量在这里配置，只需要把这个脚本加入的.bash_profile即可

echo '#!/bin/sh' > $tool_dir/tool/base.sh
chmod -R 755  $tool_dir/tool/base.sh

# mybatis_migration
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

# jdk8安装
# echo ' begin install openjdk8'
# $tool_dir/tool/install/openjdk8.sh
# echo ' end openjdk8 '

## node 按照
echo ' begin install node'
brew install node
echo ' end node '

## yarn 安装
echo ' begin install yarn'
brew install yarn
echo ' end yarn '

#--------------------------done----------------------------------------------