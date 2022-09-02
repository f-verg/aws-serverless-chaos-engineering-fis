#!/bin/bash

## TO LAUNCH THE SCRIPT ". ./python-config.sh" >> this allows to override the python alias 

# resize EBS in cloud9 environment
cd ..
curl 'https://static.us-east-1.prod.workshops.aws/public/67251d81-ef9f-4386-9a36-d015dcbfa9a3/static/code/resize.sh' -o resize.sh
bash resize.sh 20

# install Python 3.9
wget https://www.python.org/ftp/python/3.9.10/Python-3.9.10.tgz
tar xvf Python-3.9.10.tgz
cd Python-*/
./configure --enable-optimizations
sudo make altinstall

# set Python 3.9 the default python version
alias python='python3.9'

# upgrade to latest AWS SAM version
wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
sudo ./sam-installation/install --update

# upgrade to latest AWS CLI version
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
