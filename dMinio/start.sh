#!/bin/bash

docker run -d --name minio -p 19001:9000 -v $(pwd)/data:/data minio/minio server /data

