#! /bin/sh
#####清除编译文件脚本
server_path=`pwd`

function delete_file(){
	echo $1
	rm -rf $1/.gradle
	rm -rf $1/.idea
	rm -rf $1/.classpath
	rm -rf $1/.project
	rm -rf $1/.settings
	rm -rf $1/bin
}

function delete_dir(){
	delete_file $1
	cd $1
	if [ -d $1 ]
	then
		for next in `ls`
		do
			delete_dir $1/$next 
		done
	else
		echo $1/$next 'is ignore'
	fi
}

for one_file in `ls`
do
	cd $server_path
	delete_dir $server_path
done

