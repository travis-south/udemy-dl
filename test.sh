#!/usr/bin/env bash

touch test.kaboom
touch test1.kaboom

while find ./ -name "*.kaboom" | egrep ".*"
do
    find ./ -name "*.kaboom" | xargs -I{} rm -rf "{}"
    echo "removed"
    sleep 1
done
