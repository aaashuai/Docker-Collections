#!/bin/bash

docker run --rm -d --name milvus \
-p 19530:19530 \
-p 19121:19121 \
-v $(pwd)/conf:/var/lib/milvus/conf \
milvusdb/milvus:1.1.1-cpu-d061621-330cc6

