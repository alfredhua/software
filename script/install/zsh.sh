#===========  zsh =======================
function install_zsh(){
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
	brew install zsh-syntax-highlighting
	echo "source $HOME/software/base.sh " >> $HOME/.zshrc
}

#change zsh theme ZSH_THEME="awesomepanda"

install_zsh
