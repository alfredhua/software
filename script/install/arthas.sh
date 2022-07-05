function install_arthas(){
	if [ ! -d "$HOME/software/soft/arthas" ];then
		mkdir $HOME/software/soft/arthas 
	fi
	cd $HOME/software/soft/arthas && curl -O https://arthas.aliyun.com/arthas-boot.jar
}

install_arthas
