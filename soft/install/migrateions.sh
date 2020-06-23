#!/bin/sh
current_path=`pwd`

if [ ! -d $current_path/mybatis-migrations ]; then
    echo "$current_path download...."
    cd $current_path && wget https://oss.sonatype.org/content/repositories/releases/org/mybatis/mybatis-migrations/3.3.5/mybatis-migrations-3.3.5-bundle.zip
    unzip  -n  mybatis-migrations-3.3.5-bundle.zip
    mv mybatis-migrations-3.3.5 mybatis-migrations
    rm -rf mybatis-migrations-3.3.5-bundle.zip
fi
