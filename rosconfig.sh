# Set ROS Noetic
source /opt/ros/noetic/setup.bash
source $HOME/catkin_ws/devel/setup.bash
export ROS_WORKSPACE=$HOME/catkin_ws
export ROS_PACKAGE_PATH=$HOME/catkin_ws/src:$ROS_PACKAGE_PATH
export ROSCONSOLE_FORMAT='[${severity}] [${time}] [${node}]: ${message}'
export EDITOR='nvim'
