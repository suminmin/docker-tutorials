#!/bin/bash

#
apt update
apt install -y tmux

#
cd dependencies
pip3 install -r requirements.txt
cd hi221_imu
python3 setup.py install

#
source imu_tools/install/setup.bash
source imu_vn_100/install/setup.bash
source hi221_imu_9dof/install/setup.bash

# apt-get install ros-humble-imu-tools


