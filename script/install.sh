#!/bin/sh

SOFT=$HOME/software/soft

#===========  piereced =======================
function install_pierced(){
	current_path=$SOFT
	if [ ! -d $current_path/pierced ]; then
	  cd $current_path
	  git clone https://github.com/open-dingtalk/pierced.git
	  touch $current_path/pierced/start.sh
	  echo '#!/bin/sh' >> $current_path/pierced/start.sh
	  echo '#####钉钉内网穿透启动脚本' >> $current_path/pierced/start.sh
	  echo "./mac_64/ding -config=./mac_64/ding.cfg -subdomain=\$1 \$2">> $current_path/pierced/start.sh
	  chmod -R 755 $current_path/pierced/start.sh
	fi
}

#===========  brew =======================
function install_brew(){
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew install zsh-syntax-highlighting fzf ack ctags-exuberant diff-so-fancy ripgrep n
}

#===========  zsh =======================
#change zsh theme ZSH_THEME="awesomepanda"
function install_zsh(){
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
	brew install zsh-syntax-highlighting
	echo "source $HOME/software/base.sh " >> $HOME/.zshrc
}

#===========  vim =======================
function install_neovim(){
	brew install neovim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
	ln -s ~/software/config/nvim/init.vim   ~/.config/nvim/init.vim
	ln -s ~/software/config/nvim/init.vim  ~/.ideavimrc
	pip3 install ranger-fm pynvim
}

#===========  nvm =======================
function install_nvm(){
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	source $HOME/.zshrc
	nvm install v12.22.10
}

