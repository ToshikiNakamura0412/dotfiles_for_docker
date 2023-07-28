#!/bin/sh

# SCRIPT_DIR=$(cd $(dirname $0); pwd)
# DOTFILES_DIR="$HOME/dotfiles_for_docker"
USER="nakamura"
WORK_DIR="$HOME/code"
docker run \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    --privileged \
    -v $WORK_DIR:/home/$USER/workdir \
    test-dotfiles-for-ubuntu \
    bash \
    --login
