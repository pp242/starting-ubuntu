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

# adds a user called app with no password
# sudo adduser --disabled-password app --gecos "" app
# make  newuser:group foldertochangepermissonfpr
# sudo chown -R app:app /home/ubuntu/app 


sudo unlink /etc/nginx/sites-enabled/default
sudo cp /home/ubuntu/enviroment/app/reverse-proxy.conf /etc/nginx/sites-available/reverse-proxy.conf
sudo cp /home/ubuntu/starting-ubunto/app/reverse-proxy.conf /etc/nginx/sites-available/reverse-proxy.conf
sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.con
sudo service nginx configtest
sudo service nginx restart

