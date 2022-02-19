#!/bin/bash

docker run -d -p 10024:80 \
    --name nextCloud \
    -v /home/ubuntu/media/nextcloud:/var/www/html \
    -v /home/ubuntu/media/data:/data \
    --net nas_network \
    nextcloud
