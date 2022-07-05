function install_neovim(){
  brew install neovim
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh
  ln -s ~/software/config/nvim/init.vim   ~/.config/nvim/init.vim
  ln -s ~/software/config/nvim/init.vim  ~/.ideavimrc
}

install_neovim

