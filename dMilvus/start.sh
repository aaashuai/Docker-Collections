#!/bin/bash

docker run -d --name milvus \
-p 19530:19530 \
-p 19121:19121 \
-v $(pwd)/conf:/var/lib/milvus/conf \
milvusdb/milvus:1.1.0-cpu-d050721-5e559c

