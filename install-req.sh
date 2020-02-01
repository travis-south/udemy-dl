#!/usr/bin/env bash

sudo apt update; sudo apt install python-pip git -y; pip install awscli --upgrade --user; git clone https://github.com/travis-south/udemy-dl.git; cd udemy-dl;

AWS_ACCESS_KEY_ID= AWS_SECRET_ACCESS_KEY= ./dl-all.sh > dl.log 2>&1 &
