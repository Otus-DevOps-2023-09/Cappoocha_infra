#!/bin/bash
echo "Installing Mongodb"
apt update && \
apt install mongodb -y && \
systemctl status mongodb
systemctl start mongodb
systemctl enable mongodb
