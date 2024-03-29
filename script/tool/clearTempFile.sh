#! /bin/sh
#============= 清除编译文件脚本 ==========

alias c_temp="ls_delete_file"

function ls_delete_file(){
  server_path=`pwd`
  delete_dir $server_path
  for one_file in `ls`
  do
    if [ -d $server_path/$one_file ]
    then
      delete_dir $server_path/$one_file
    else
      echo $one_file 'is ignore'
    fi
  done
}


function delete_file(){
	rm -rf $1/.gradle
	rm -rf $1/.idea
	rm -rf $1/.classpath
	rm -rf $1/.project
	rm -rf $1/.settings
	rm -rf $1/bin
	rm -rf $1/.factorypath
	rm -rf $1/out
	rm -rf $1/target
}

function delete_dir(){
	cd $1
	delete_file $1
	for next in `ls`
	do
		if [ -d $1/$next ]
		then
			delete_file $1/$next 
		else
			echo $1/$next 'is ignore'
		fi
	done
}


