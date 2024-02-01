#!/bin/bash

# Change Working Directory
cd /home/ec2-user/server

# Install PM2 if not already installed
npm install -g pm2

# Delete Old PM2 Service, if exists
pm2 delete Frontend

# Start the PM2 service
pm2 start server.js --name Frontend
