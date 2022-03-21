#!/bin/bash

echo "=================================================="
echo "            Installing Required Tools             "
echo "=================================================="
sudo apt update
sudo apt install -y curl unzip sudo git pip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --update

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g aws-cdk

sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y && sudo apt-get update
sudo apt install -y python3.9
pip install pytest