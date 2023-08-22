#!/bin/bash

#docker run -d \
  --restart=always \
  --name mycentos \
  -v /data/containerd/volume/centos7:/data \
  -p 3001:3000 \
  mycentos:latest


# docker build -t mycentos .
# dos2unix run..

docker run -d --name centos7 --restart=always -v /data/containerd/volume/centos7:/data/app -p 3001:3000 mycentos:latest