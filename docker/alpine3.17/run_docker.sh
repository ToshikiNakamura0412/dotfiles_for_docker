#!/bin/bash

USER="nakamura"
WORK_DIR="$HOME/code"
docker run \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    --privileged \
    -v $WORK_DIR:/home/$USER/workdir \
    test-dotfiles-for-alpine \
    sh \
    --login
