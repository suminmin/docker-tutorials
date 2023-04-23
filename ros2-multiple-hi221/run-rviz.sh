#!/bin/bash

DISPLAY="host.docker.internal"
PWD="$(pwd)"
docker run -it --rm -v ${PWD}/rosbot_pro.rviz:/root/.rviz2/default.rviz -e ROS_DOMAIN_ID=2 --name rviz2 --net=host -e DISPLAY=${DISPLAY}:0.0 husarion/rviz2:humble rviz2

