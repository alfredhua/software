#!/bin/sh
current_path='/Users/hua/workspace/self/docker'


alias enter=$current_path/tool/exec-docker.sh $1

alias c='clear'

source $current_path/project/manage.sh
source $current_path/project/zrcaifu.sh

alias status="$current_path/tool/git/git.sh status"
alias pull="$current_path/tool/git/git.sh pull"
alias push="$current_path/tool/git/git.sh push $1"

source $current_path/tool/bash_rc.sh
