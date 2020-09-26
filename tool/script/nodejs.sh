#!/bin/sh



alias nrstart="npm run start"
alias nrdev="npm run dev"
alias ninstall="npm install"
alias ninstallg="npm_install_g"


function npm_install_g(){
    npm install $1 -g
}


