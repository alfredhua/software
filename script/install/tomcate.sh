function install_tomcate(){
	if [ ! -d "$HOME/software/soft/install_tomcate" ];then
    echo "软件已存在"
	fi
  cd $HOME/software/soft/  && wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.zip
  unzip apache-tomcat-8.5.81.zip && mv apache-tomcat-8.5.81 tomcate
}

install_tomcate
