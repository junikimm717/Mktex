#!/bin/sh 

docker image rm mktex-build
docker build -t mktex-build .
