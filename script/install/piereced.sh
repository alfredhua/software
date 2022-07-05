#===========  piereced =======================
function install_pierced(){
	current_path=$HOME/software/soft
	if [ ! -d $current_path/pierced ]; then
	  cd $current_path
	  git clone https://github.com/open-dingtalk/pierced.git
	  touch $current_path/pierced/start.sh
	  echo '#!/bin/sh' >> $current_path/pierced/start.sh
	  echo '#####钉钉内网穿透启动脚本' >> $current_path/pierced/start.sh
	  echo "./mac_64/ding -config=./mac_64/ding.cfg -subdomain=\$1 \$2">> $current_path/pierced/start.sh
	  chmod -R 755 $current_path/pierced/start.sh
	fi
}

install_pierced
