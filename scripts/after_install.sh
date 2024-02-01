#!/bin/bash

# Change Working Directory
cd /home/ec2-user/server

# Remove Unused Code
rm -rf node_modules
rm -rf build

# Update npm and Babel dependencies
npm install -g npm
npm install --save-dev @babel/plugin-transform-class-properties \
  @babel/plugin-transform-numeric-separator \
  @babel/plugin-transform-nullish-coalescing-operator \
  @babel/plugin-transform-optional-chaining \
  @babel/plugin-transform-private-methods

# Install Node Modules and Build
npm install
npm run build
