#!/bin/bash

# Load Environment Variables
if [ -f .env ]; then
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
fi

case "$1" in
    "create")
        docker-compose build node
        docker-compose run --rm node ng new $APP_NAME --routing=$APP_ROUTING --style=$APP_STYLE --interactive=false
        ;;
    "start")
        docker-compose run -d --name=angular_runner -p $APP_PORT:4200 -w "/home/node/project/$APP_NAME" node ng s $APP_NAME --host=0.0.0.0 --disableHostCheck
        ;;
    "stop")
        docker container stop angular_runner
        docker container rm angular_runner
        ;;
    "exec")
        if [ $# -lt 2 ]; then
            echo 'No parameter specified'
        else
            docker exec -it angular_runner $2
        fi
	    ;;
    *)
        echo 'No parameter specified'
        ;;
esac
