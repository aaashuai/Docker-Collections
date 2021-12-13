#!/bin/bash
docker pull wechaty/wechaty:latest

export WECHATY_LOG="verbose"
export WECHATY_PUPPET="wechaty-puppet-wechat"
export WECHATY_PUPPET_SERVER_PORT="8080"
export WECHATY_TOKEN="python-wechaty-ls"

docker run -d \
--name wechaty\
--rm \
-e WECHATY_LOG \
-e WECHATY_PUPPET \
-e WECHATY_PUPPET_SERVER_PORT \
-e WECHATY_TOKEN \
-p "10909:$WECHATY_PUPPET_SERVER_PORT" \
wechaty/wechaty:latest

