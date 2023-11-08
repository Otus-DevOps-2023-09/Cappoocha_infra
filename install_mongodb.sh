#!/bin/bash
echo "Installing Mongodb"
sudo apt update && \
sudo apt install mongodb -y && \
systemctl status mongodb
sudo systemctl start mongodb
sudo systemctl enable mongodb
