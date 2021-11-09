#!/bin/sh

alias nvu8="nvm use v8"
alias nvu12="nvm use v12"
alias nvd12="nvm alias default v12"
alias nvd8="nvm alias default v8"
alias nprs="npm run start"
alias npdev="npm run dev"
alias nps="npm run server"
alias npi="npm install"
alias npig="npm_install_g"

function npm_install_g(){
    npm install $1 -g
}
