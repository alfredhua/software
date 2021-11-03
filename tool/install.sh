
#!/bin/sh

down_load_path=$HOME/software/soft
dic=(
[maven]="zip,apache-maven-3.8.3-bin.zip,apache-maven-3.8.3,https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.zip"
[gradle]="zip,gradle-6.0.1-bin.zip,gradle-6.0.1,https://downloads.gradle-dn.com/distributions/gradle-6.0.1-bin.zip "
[flink]="tgz,flink-1.14.0-bin-scala_2.11.tgz,flink-1.14.0,https://dlcdn.apache.org/flink/flink-1.14.0/flink-1.14.0-bin-scala_2.11.tgz"
[hadoop]="gz,hadoop-3.2.2.tar.gz,hadoop-3.2.2,https://ftp.jaist.ac.jp/pub/apache/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz"
[jad]="zip,jad158g.mac.intel.zip,,https://varaneckas.com/jad/jad158g.mac.intel.zip"
[scala]="tgz,scala-2.11.1.tgz,scala-2.11.1,https://downloads.lightbend.com/scala/2.11.1/scala-2.11.1.tgz"
)
function install(){
	echo ' begin install ' $1 
	soft=${dic[$1]}
	echo ${soft}
	file_type=`echo ${soft}|awk -F[,] '{print $1}'`
	file_name=`echo ${soft}|awk -F[,] '{print $2}'`
	dic_name=`echo ${soft}|awk -F[,] '{print $3}'`
	url=`echo ${soft}|awk -F[,] '{print $4}'`
	echo $file_type $file_name $dic_name $url
	if [ ! -d $down_load_path/$1 ]; then
		echo "$1 download...."
		cd $down_load_path && wget $url 
		if [ "zip" == $file_type  ]; then
			unzip -n $file_name -d $1
		else
			tar -xzvf $file_name  && mv $dic_name $1
		fi
		rm -rf $file_name 
	fi
	echo ' end ' $1
}

function node_install(){
	brew install yarn
	curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
	nvm install v12.8.0
	nvm use v12.8.0
	nvm alias default v12.8.0
}

function pierced(){
	current_path=$down_load_path
	if [ ! -d $current_path/pierced ]; then
	  cd $current_path
	  git clone https://github.com/open-dingtalk/pierced.git
	  echo '#!/bin/sh' >> $current_path/pierced/start.sh
	  echo '#####钉钉内网穿透启动脚本' >> $current_path/pierced/start.sh
	  echo "./mac_64/ding -config=./mac_64/ding.cfg -subdomain=\$1 \$2">> $current_path/pierced/start.sh
	  chmod -R 755 $current_path/pierced/start.sh
	fi
}

for soft in $1
do
	if [ $soft == 'node' ];then
		node_install
	elif [ $soft == 'pierced' ];then
		pierced
	else
		install $soft
	fi
done
