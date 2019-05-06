#!/bin/bash
DIR=$(pwd)

ctr --namespace cli.io run --net-host --rm \
    --mount type=bind,src="$DIR",dst=/app,options=rbind:rw \
    --cwd /app \
    docker.io/library/node:latest node \
    npm $@