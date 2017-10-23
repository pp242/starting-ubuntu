#!/bin/bash


#public key for mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

#Create a MongoDB list file in /etc/apt/sources.list.d/ with this command
sudo echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#update the sources 
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y mongodb-org

sudo cp /home/ubuntu/enviroment/db/mongod.service /lib/systemd/system/mongod.service 
sudo cp /home/ubuntu/enviroment/db/mongod.conf /etc/mongod.conf

sudo systemctl daemon-reload
sudo service mongod restart

sudo systemctl start mongod
sudo systemctl enable mongod
sudo netstat -plntu