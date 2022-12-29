#=========== brew =========
alias i_brew="install_brew"
function install_brew(){
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

#=========== arthas =========
alias i_arthas="install_arthas"
function install_arthas(){
  curl -fLo $HOME/software/soft/arthas/arthas-boot.jar --create-dirs  https://arthas.aliyun.com/arthas-boot.jar
}

#=========== neovim =========
alias i_neovim="install_neovim"
function install_neovim(){
  brew install neovim ctags
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ln -s ~/software/config/nvim/init.vim   ~/.config/nvim/init.vim
  ln -s ~/software/config/nvim/init.vim  ~/.ideavimrc
  curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
}

#===========  nvm =======================
alias i_nvm="install_nvm"
function install_nvm(){
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	source $HOME/.zshrc
	nvm install v12.22.10
}

#===========  piereced =======================
alias i_pierced="install_pierced"
function install_pierced(){
	current_path=$HOME/software/soft
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

#===========  i_ranger =======================
alias i_ranger="install_ranger"
function install_ranger(){
    pip3 install ranger-fm pynvim
    rm -rf ~/.config/ranger && mkdir ~/.config/ranger
    echo 'mime ^text,  label editor = nvim -- "$@"' >> ~/.config/ranger/rifle.conf
    echo 'mime ^text,  label pager  = "$PAGER" -- "$@"' >> ~/.config/ranger/rifle.conf
    echo '!mime ^text, label editor, ext xml|json|csv|tex|py|pl|rb|js|sh|php = nvim -- "$@"' >> ~/.config/ranger/rifle.conf
    echo '!mime ^text, label pager,  ext xml|json|csv|tex|py|pl|rb|js|sh|php = "$PAGER" -- "$@"' >> ~/.config/ranger/rifle.conf
}

#===========  zsh =======================
#change zsh theme ZSH_THEME="awesomepanda"
alias i_zsh="install_zsh"
function install_zsh(){
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
	brew install zsh-syntax-highlighting
	echo "source $HOME/software/base.sh " >> $HOME/.zshrc
}

