#!/bin/sh

if [ $1 == 'enter' ]
then
    docker exec -it $2 bash
elif [ $1 == 'start' ]
then
    docker-compose -f $2-compose.yml up -d
elif [ $1 == 'down' ]
then
    docker-compose -f $2-compose.yml down
fi

