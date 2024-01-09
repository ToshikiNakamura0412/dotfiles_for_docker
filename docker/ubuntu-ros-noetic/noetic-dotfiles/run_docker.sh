#!/bin/bash

USER="nakamura"
WORK_DIR="$HOME/catkin_ws/src"
PKG_NAME="pkg_name"
docker run \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    --privileged \
    -v $WORK_DIR/$PKG_NAME:/root/catkin_ws/src/$PKG_NAME \
    test-dotfiles-for-ros \
    bash \
    --login
