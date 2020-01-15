#!/bin/bash
docker rmi -f $(docker ps -a | awk '{print $2}' | sed '/ID/d')
docker rm -f $(docker ps -n 1 -q)
