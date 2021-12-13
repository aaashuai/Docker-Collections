#!/bin/bash

docker run -d --name milvus \
-p 19530:19530 \
-p 19121:19121 \
-v /Users/lin/docker_containers/d_miluvs/conf:/var/lib/milvus/conf \
milvusdb/milvus:1.1.1-cpu-d061621-330cc6

