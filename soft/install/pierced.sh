#!/bin/sh
## 钉钉内网穿透工具

echo ' begin install  pierced'

current_path=`pwd`

if [ ! -d $current_path/pierced ]; then
  cd $current_path
  git clone https://github.com/open-dingtalk/pierced.git
  echo '#!/bin/sh' >> $current_path/pierced/start.sh
  echo '#####钉钉内网穿透启动脚本' >> $current_path/pierced/start.sh
  echo "./mac_64/ding -config=./mac_64/ding.cfg -subdomain=\$1 \$2">> $current_path/pierced/start.sh
  chmod -R 755 $current_path/pierced/start.sh
fi

echo ' end pierced '
