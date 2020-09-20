#!/bin/sh


alias gst="git status"
alias gpull="git pull"
alias gpush="a $1"
alias gdiff="$env_path/script/git.sh gdiff $1"
alias gche="$env_path/script/git.sh checkout $1"
alias gche="$env_path/script/git.sh checkout $1"




function a(){
    git add .
    git commit -m $1
    git push
}

# if [ $1 == 'status' ];
# then
#     git status
# elif [ $1 == 'pull' ];
# then
#      git pull
# elif [ $1 == 'push' ];
# then
   
# elif [ $1 == 'checkout' ];
# then
#     git checkout $2 
# elif [ $1 == 'gdiff' ];
# then
#     git diff $2 
# elif [ $1 == 'merge' ];
# then
#     git merge $2 
# fi