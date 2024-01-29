#!/bin/bash

#_Change_Working_Directory
cd /home/ubuntu

#_Update_&_Set_Node_Version
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -

#_Download_Node_&NPM
apt-get install -y nodejs

#_Download_PM2
npm install pm2@latest -g
