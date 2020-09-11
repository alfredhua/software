#!/bin/sh

if [ $1 == 'status' ];
then
    git status
elif [ $1 == 'pull' ];
then
     git pull
elif [ $1 == 'push' ];
then
    git add .
    git commit -m $2
    git push
elif [ $1 == 'checkout' ];
then
    git checkout $2 
elif [ $1 == 'gdiff' ];
then
    git diff $2 
fi