#!/bin/bash

ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
apt update
apt install -y curl unzip sudo git pip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g aws-cdk

sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y && sudo apt-get update
sudo apt install -y python3.9
pip install pytest