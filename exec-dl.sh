#!/usr/bin/env bash
COURSE=$1

#pip install -r requirements.txt
python udemy-dl.py --skip-sub -o ./boon-tut-vids --cookies cookie.txt https://lamudigroup.udemy.com/${COURSE}

while find ./ -name "*.part" | egrep ".*"
do
    find ./ -name "*.part" | xargs -I{} rm -rf "{}"
    echo "Retrying failed downloads...."
    python udemy-dl.py --skip-sub -o ./boon-tut-vids --cookies cookie.txt https://lamudigroup.udemy.com/${COURSE}
done

aws s3 cp --recursive ./boon-tut-vids/${COURSE} s3://boon-tut-vids/${COURSE}
