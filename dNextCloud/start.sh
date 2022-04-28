#!/bin/bash

docker run -d -p 10024:80 \
    --name nextCloud \
    -v $(pwd)/html:/var/www/html \
    -v $(pwd)/data:/data \
    nextcloud
