#!/usr/bin/env bash

docker run  -ti --rm --net=host \
            --privileged \
            --name webserver webserver
            
