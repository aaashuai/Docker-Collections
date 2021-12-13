#!/bin/bash


docker run -d --name es --net es -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.12.1
docker run -d --name kibana --net es -p 5601:5601 -e "ELASTICSEARCH_HOSTS=http://es:9200" docker.elastic.co/kibana/kibana:7.12.1



