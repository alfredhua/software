function install_ranger(){
    pip3 install ranger-fm pynvim
    rm -rf ~/.config/ranger && mkdir ~/.config/ranger
    echo 'mime ^text,  label editor = nvim -- "$@"' >> ~/.config/ranger/rifle.conf
    echo 'mime ^text,  label pager  = "$PAGER" -- "$@"' >> ~/.config/ranger/rifle.conf
    echo '!mime ^text, label editor, ext xml|json|csv|tex|py|pl|rb|js|sh|php = nvim -- "$@"' >> ~/.config/ranger/rifle.conf
    echo '!mime ^text, label pager,  ext xml|json|csv|tex|py|pl|rb|js|sh|php = "$PAGER" -- "$@"' >> ~/.config/ranger/rifle.conf
}

install_ranger
