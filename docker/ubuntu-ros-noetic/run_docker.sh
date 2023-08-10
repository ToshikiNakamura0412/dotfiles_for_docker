#!/bin/bash

# SCRIPT_DIR=$(cd $(dirname $0); pwd)
# DOTFILES_DIR="$HOME/dotfiles_for_docker"
USER="nakamura"
WORK_DIR="$HOME/catkin_ws/src/<pkg-name>"
docker run \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    --privileged \
    -v $WORK_DIR:/root/catkin_ws/src/<pkg-name> \
    test-dotfiles-for-ros \
    bash \
    --login
