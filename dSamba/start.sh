#!/bin/bash

docker run -d \
  -p 137:137/udp \
  -p 138:138/udp \
  -p 139:139 \
  -p 445:445 \
  -p 445:445/udp \
  --restart='always' \
  -v /home/ubuntu/media/samba:/share/ \
  --net nas_network \
  --name samba docker.io/dastrasmue/rpi-samba \
  -s "Public:/share/:rw:"


