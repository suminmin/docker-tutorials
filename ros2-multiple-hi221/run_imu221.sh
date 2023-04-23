#!/bin/bash

ros2 run hi221_imu_9dof imu_node --ros-args -p port:=/dev/ttyUSB0 -r publish_magnetometer:=true

