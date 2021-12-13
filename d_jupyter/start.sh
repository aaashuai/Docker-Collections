#!/bin/bash

docker run -d --name jupyter -p 18888:8888 \
	-e PASSWORD=turo -e JUPYTER_ENABLE_LAB=yes \
	-v /Users/lin/Documents/CS/Python/jupyter:/home/jovyan/work \
  --network=host \
	jupyter/base-notebook

