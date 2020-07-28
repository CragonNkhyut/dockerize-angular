Dockerize-angular

This project will let you create, build, test, and deploy angular applications in docker without needing tools to install on your computer. 

Step 1: copy env-example and rename to .env

Step 2: Set app name, whether to use angular routing, css styles and local running port in .env file

Step 3: Type sh run.sh in terminal to create to create a new angular project. The project will create under the same directory. 

To serve the project locally, type sh run.sh start

The project will open in the localhost and port specified in .env file. 

Stop the project by typping sh run.sh stop.

Extras, in order to run ng related commands
Type sh run.sh exec to enter the docker and execute the command (be remember to use double quotes(") for the command)

Known Issues

1. This docker uses the included user of node docker - node(uid - 1000). Users other than uid 1000 will not be able to work with this version of project. 

2. If the container is stopped without removing - like shutting down the computer, the docker will not be start. Please type sh run.sh stop first to manually remove the container. 
