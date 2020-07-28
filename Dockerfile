FROM node:latest

LABEL maintainer="mknyunt97@gmail.com"

RUN npm install -g @angular/cli

RUN npm install -g @angular/core

USER node

WORKDIR /home/node/project

EXPOSE 4200
