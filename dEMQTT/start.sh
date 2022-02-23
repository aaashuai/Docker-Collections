#!/bin/bash

docker run -d --name emqx -p 18083:18083 -p 1883:1883 -v "$(pwd)/conf:/opt/emqx/etc" emqx/emqx:latest


