#!/bin/sh

echo ' begin install maven'

current_path=`pwd`

if [ ! -d $current_path/maven ]; then
    echo "$current_path download...."
    cd $current_path && wget https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.zip 
	unzip apache-maven-3.6.3-bin.zip  && mv apache-maven-3.6.3 maven
    rm -rf $current_path/apache-maven-3.6.3-bin.zip
fi

echo ' end maven '
