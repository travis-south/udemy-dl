#!/usr/bin/env bash

sudo apt update
sudo apt install python-pip git -y
pip3 install awscli --upgrade --user
git clone https://github.com/travis-south/udemy-dl.git
cd udemy-dl
# Run export for aws keys
