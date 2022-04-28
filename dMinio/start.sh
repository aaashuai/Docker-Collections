#!/bin/bash

docker run -d --name minio -p 19001:9000 -v $(pwd)/data:/data minio/minio:RELEASE.2020-12-03T00-03-10Z server --address="0.0.0.0:9000" /data

