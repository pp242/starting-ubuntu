#!/bin/bash

#update the sources 

sudo apt-get update -y
sudo apt-get upgrade -y

#install

sudo apt-get install nginx -y 


# install nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y 

#install npm and pm2 within it

sudo npm install pm2 -g