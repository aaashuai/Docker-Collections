#!/bin/bash

docker run -d --name kodi \
-v ~/media/kodi:/config/.kodi \
-v ~/media/data:/data \
-e PGID=$GID -e PUID=$UID \
-p 8080:8080 \
-p 9090:9090 \
-p 9777:9777/udp \
lsioarmhf/kodi-headless-aarch64

