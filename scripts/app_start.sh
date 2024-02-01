#!/bin/bash

# Change Working Directory
cd /home/ec2-user/server

# Identify the full path to pm2
PM2_PATH=$(which pm2)

# Install PM2 if not already installed
npm install -g pm2

# Delete Old PM2 Service, if exists
$PM2_PATH delete Frontend

# Start the PM2 service
$PM2_PATH start server.js --name Frontend
