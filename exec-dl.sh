#!/usr/bin/env bash
COURSE=$1

#pip install -r requirements.txt
python udemy-dl.py --skip-sub -o /Users/jcapagcuan/Downloads/boon-tuts-vids --cookies cookie.txt https://lamudigroup.udemy.com/${COURSE}

aws s3 cp --recursive ./boon-tut-vids/${COURSE} s3://boon-tut-vids/${COURSE}
