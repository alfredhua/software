#!/bin/sh
alias denter="enter"
alias compstart="compose_start"
alias comstop="compose_stop"

function enter(){
    docker exec -it $1 bash
}


function compose_start(){
   docker-compose -f $1 up -d
}

function compose_stop(){
   docker-compose -f $1 down
}

