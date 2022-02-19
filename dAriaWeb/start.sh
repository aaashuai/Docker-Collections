#!/bin/bash

docker run -d \
    --name ariaWeb \
    --restart unless-stopped \
    --log-opt max-size=1m \
    --net nas_network \
    -p 6880:6880 \
    p3terx/ariang
