#!/bin/bash

docker run -d \
  --name=plex \
  --net=nas_network \
  -e VERSION=docker \
  -v ~/media/plex:/config \
  -v ~/media/data:/tv \
  -v ~/media/data:/movies \
  --restart unless-stopped \
  -p 32400:32400 \
  -p 1900:1900/udp \
  -p 3005:3005 \
  -p 5353:5353/udp \
  -p 8324:8324 \
  -p 32410:32410/udp \
  -p 32412:32412/udp \
  -p 32413:32413/udp \
  -p 32414:32414/udp \
  -p 32469:32469 \
  ghcr.io/linuxserver/plex

