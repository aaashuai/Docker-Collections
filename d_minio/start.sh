#!/bin/bash

docker run -d --name minio -p 19001:9000 -v /Users/lin/docker_containers/d_minio/data:/data minio/minio server /data

