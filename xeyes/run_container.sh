#!/bin/bash

DISPLAY=:0
docker run \
    --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -e DISPLAY=${DISPLAY} \
    --name xeyes \
    fr3nd/xeyes

