
#!/bin/sh

down_load_path=$HOME/software/soft

function install(){
	echo ' begin install ' $1 
	soft=()
	if [ $1 == 'maven' ]
	then
		#maven
		soft=("zip" "apache-maven-3.8.3-bin.zip" "apache-maven-3.8.3" "https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.zip")
	else
		echo ''
	fi

	if [ ! -d $down_load_path/$1 ]; then
		echo "$1 download...."
		cd $down_load_path && wget ${soft[3]}
		if [ "zip" == ${soft[0]} ]; then
			unzip ${soft[1]}  && mv ${soft[2]} $1
			rm -rf ${soft[1]}		
		else
			echo ''
		fi
	fi
	echo ' end ' $1
}


install $1
