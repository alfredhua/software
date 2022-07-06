function install_flink(){
	if [ ! -d "$HOME/software/soft/flink" ];then
    echo "软件已存在"
	fi
  cd $HOME/software/soft/  && wget https://dlcdn.apache.org/flink/flink-1.15.0/flink-1.15.0-bin-scala_2.12.tgz
  tar -xzvf flink-1.15.0-bin-scala_2.12.tgz
}

install_flink
