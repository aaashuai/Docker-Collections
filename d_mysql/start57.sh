#!/bin/bash


docker run -d \
    --name mysql57 \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD="123456" \
    -e TZ="Asia/Shanghai"  \
    -v $(pwd)/data:/var/lib/pysql \
    mysql:5.7

