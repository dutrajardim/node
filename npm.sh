#!/bin/bash
DIR=$(pwd)

ctr -n cli.io run --rm --net-host \
    --mount type=bind,src="$DIR",dist=/app,options=rbind:rw \
    docker.io/library/node:latest node \
    npm $@