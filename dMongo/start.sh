#!/bin/bash


docker run --rm -v $(pwd)/db:/mongodata -p 6625:27017 --name mongodb -d mongo

