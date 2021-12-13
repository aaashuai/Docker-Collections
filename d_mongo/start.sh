#!/bin/bash


docker run --rm -v /data:/mongodata -p 6625:27017 --name mongodb -d mongo

