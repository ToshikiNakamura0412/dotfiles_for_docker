# Set ROS Noetic
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash
export ROS_WORKSPACE=~/catkin_ws
export ROS_PACKAGE_PATH=~/catkin_ws/src:$ROS_PACKAGE_PATH
export ROSCONSOLE_FORMAT='[${severity}] [${time}] [${node}]: ${message}'
export EDITOR='nvim'
