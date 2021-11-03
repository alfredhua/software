
#!/bin/sh

down_load_path=$HOME/software/soft
dic=(
[maven]="zip,apache-maven-3.8.3-bin.zip,apache-maven-3.8.3,https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.zip"
[gradle]="zip,gradle-6.0.1-bin.zip,gradle-6.0.1,https://downloads.gradle-dn.com/distributions/gradle-6.0.1-bin.zip "
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
			unzip  $file_name && mv $dic_name $1
		else
			tar -xzvf $file_name  && mv $dic_name $1
		fi
		rm -rf $file_name 
	fi
	echo ' end ' $1
}

for soft in $1
do
	install $soft
done
