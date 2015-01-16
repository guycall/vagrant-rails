#!/bin/sh

# Purpose: minimalistic provisioning of a fresh vagrant box ubuntu/trusty64 for 
# rails development. Uses shell as the provisioner.
# More details https://docs.vagrantup.com/v2/provisioning/shell.html
# Original File: https://gist.github.com/guycall/430dca8985f56924e03a

# Ensure OS is up to date
sudo apt-get update
sudo apt-get dist-upgrade

# Needed by gems that build native extensions
sudo apt-get install -y build-essential

# Needed for the json gem
sudo apt-get install -y ruby-dev

# Needed to build sqlite3 gem
sudo apt-get install -y libsqlite3-dev

# Needed to build mysql gem
sudo apt-get install -y libmysqlclient-dev

# Rails needs a JavaScript runtime
sudo apt-get install -y nodejs

# Install some essentials
sudo apt-get install -y git
sudo gem install bundler

# Install mysql client
sudo apt-get install -y mysql-client

# Currently manually installing mysql server
# since it prompts for root password
# There are ways to script a silent install
# sudo apt-get install mysql-server

echo 'Welcome! Install mysql-server, then go to your app folder and run: bundle install, rake db:create, etc.. '
