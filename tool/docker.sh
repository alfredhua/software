#!/bin/sh

alias denter="docker_enter"
alias dstart="docker_compose_start"
alias dstop="docker_compose_stop"
alias dps="docker ps -a"
function docker_enter(){
    docker exec -it $1 bash
}
function docker_compose_start(){
    docker-compose -f $1 up -d
}
function docker_compose_stop(){
    docker-compose -f $1 down
}
