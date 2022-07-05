#===========  nvm =======================
function install_nvm(){
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	source $HOME/.zshrc
	nvm install v12.22.10
}

install_nvm
