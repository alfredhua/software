# /usr/bin

# 设置代理
# export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# 安装homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# /bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"

# 安装软件
brew install git maven ctags neovim nvm python3 rg wget autojump

# 安装jdk8
brew install --cask homebrew/cask-versions/adoptopenjdk8

echo "export JAVA_HOME=\$(/usr/libexec/java_home)" >>$HOME/.zshrc

# 安装ohmyzsh

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd $HOME/.oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

rm $HOME/.zshrc && ln -s ~/software/config/zsh/zshrc $HOME/.zshrc

# neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/software/config/nvim/neovim/init.vim  ~/.config/nvim/init.vim

# idea 快捷键设置
ln -s ~/software/config/nvim/idea/ideavimrc ~/.ideavimrc

# 输入法自动切换
curl -Ls https://raw.githubusercontent.com/daipeihust/im-select/master/install_mac.sh | sh

# nvm 
cd ~ && mkdir ~/.nvm
    
source ~/.zshrc

#node 
nvm install v12.22.12
nvm install v14.14.0
nvm alias default v14.14.0
 
# nvim ranger vim中图片预览工具
pip3 install ranger-fm pynvim

rm -rf ~/.config/ranger && mkdir ~/.config/ranger

echo 'mime ^text,  label editor = nvim -- "$@"' >> ~/.config/ranger/rifle.conf
echo 'mime ^text,  label pager  = "$PAGER" -- "$@"' >> ~/.config/ranger/rifle.conf
echo '!mime ^text, label editor, ext xml|json|csv|tex|py|pl|rb|js|sh|php = nvim -- "$@"' >> ~/.config/ranger/rifle.conf

# arthas
curl -fLo $HOME/software/soft/arthas/arthas-boot.jar --create-dirs  https://arthas.aliyun.com/arthas-boot.jar
