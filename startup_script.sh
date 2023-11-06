#!/bin/bash
sudo apt update && \
sudo apt install -y ruby-full ruby-bundler build-essential mongodb git && \
ruby -v
bundler -v
systemctl status mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb
cd /home/yc-user
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
