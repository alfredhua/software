1. 安装插件 sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
2. mkdir ~/.config/nvim/
3. mv init.vim ~/.config/nvim/init.vim
4.  pip3 install pynvim
5. cd $HOME/.oh-my-zsh/plugins
#下载代码
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
#自动配置
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

