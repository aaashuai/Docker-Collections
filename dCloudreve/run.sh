#!/bin/bash

docker run -d \
  --name cloudreve \
  -p 5212:5212 \
  --restart=unless-stopped \
  -v /home/ubuntu/media/data/downloads:/downloads \
  -v /home/ubuntu/media/data/cloudreve:/cloudreve/uploads/ \
  -v /home/ubuntu/dContainers/dCloudreve/config:/cloudreve/config \
  -v /home/ubuntu/dContainers/dCloudreve/db:/cloudreve/db \
  -v /home/ubuntu/dContainers/dCloudreve/avatar:/cloudreve/avatar \
  xavierniu/cloudreve

