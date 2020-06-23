#!/bin/sh
current_path=`pwd`

if [ ! -d $current_path/mybatis-migrations ]; then

    echo "$current_path download...."
    cd $current_path && wget https://oss.sonatype.org/content/repositories/releases/org/mybatis/mybatis-migrations/3.3.5/mybatis-migrations-3.3.5-bundle.zip
    unzip  -n  mybatis-migrations-3.3.5-bundle.zip
    mv mybatis-migrations-3.3.5 mybatis-migrations
    rm -rf mybatis-migrations-3.3.5-bundle.zip
    ##配置环境变量
    MIGRATE_HOME="$current_path/mybatis-migrations"
    echo '####  migrate环境变量' >> $current_path/tool/base.sh
    echo "MIGRATIONS_HOME=${MIGRATE_HOME}" >> $current_path/tool/base.sh
    echo 'export MIGRATIONS=$MIGRATIONS_HOME/bin'>> $current_path/tool/base.sh
    echo 'export PATH=$MIGRATIONS:$PATH'>> $current_path/tool/base.sh
    echo '############## end #############' >> $current_path/tool/base.sh
    echo "" >> $current_path/tool/base.sh

fi
