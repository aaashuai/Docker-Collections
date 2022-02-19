#!/bin/bash

export WECHATY_LOG="verbose"
export WECHATY_PUPPET="wechaty-puppet-wechat"
export WECHATY_PUPPET_SERVER_PORT="8080"
export WECHATY_TOKEN="python-wechaty-2deb253a-9496-4d4f-af7f-9040d20a98c4"

docker run -d \
	--restart=always \
        --name wechaty\
        -e WECHATY_LOG \
        -e WECHATY_PUPPET \
        -e WECHATY_PUPPET_SERVER_PORT \
        -e WECHATY_TOKEN \
        -p "10909:$WECHATY_PUPPET_SERVER_PORT" \
        wechaty:0.1
        # wechaty/wechaty:latest
