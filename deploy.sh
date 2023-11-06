#!/bin/bash
cd /home/yc-user
sudo apt update && sudo apt install -y git
echo "Clonning Reddit app"
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
echo "App installed"
echo "Run app"
puma -d
