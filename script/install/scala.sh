function install_scala(){
  if [ ! -d "$HOME/software/soft/scala" ];then
    echo "软件已存在"
	fi
  cd $HOME/software/soft/  && wget https://downloads.lightbend.com/scala/2.12.16/scala-2.12.16.tgz
  tar -xzvf scala-2.12.16.tgz && mv scala-2.12.16 scala
}

install_scala
