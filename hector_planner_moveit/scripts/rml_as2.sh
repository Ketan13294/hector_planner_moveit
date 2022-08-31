#!/bin/sh
export RML_WORKSPACE=$HOME/rml_workspace
mkdir -p $RML_WORKSPACE/src/rml
rosws init -c $RML_WORKSPACE/src/rml /opt/ros/`rosversion -d`
cd $RML_WORKSPACE
cd src/rml
rosws set -y quadcopter_moveit https://github.com/Ketan13294/quadcopter_moveit.git --git --version=master
rosws update quadcopter_moveit
cd $RML_WORKSPACE
catkin init
catkin build
source ./devel/setup.bash
