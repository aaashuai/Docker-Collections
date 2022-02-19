#!/bin/bash

docker run -d \
    --name aria \
    --restart unless-stopped \
    --log-opt max-size=1m \
    -e PUID=$UID \
    -e PGID=$GID \
    -e RPC_SECRET=qq3dcvfio \
    -e RPC_PORT=6800 \
    -p 6800:6800 \
    -e LISTEN_PORT=6888 \
    -p 6888:6888 \
    -p 6888:6888/udp \
    --net nas_network \
    -v ~/media/aria:/config \
    -v ~/media/data/downloads:/downloads \
    p3terx/aria2-pro

