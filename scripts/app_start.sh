#!/bin/bash

# Change Working Directory
cd /home/ec2-user/server
# PM2 is process manager for Node.js applications that allows you to keep your applications running continuously
# PM2 can automatically restart your application if it crashes, & reload your application when you update your code.
# Install PM2 if not already installed
npm install -g pm2

# Delete Old PM2 Service, if exists
/usr/local/bin/pm2 delete Frontend

# Start the PM2 service
/usr/local/bin/pm2 start server.js --name Frontend
