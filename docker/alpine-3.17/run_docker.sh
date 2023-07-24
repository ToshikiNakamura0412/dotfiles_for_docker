#!/bin/sh

# SCRIPT_DIR=$(cd $(dirname $0); pwd)
USER="nakamura"
WORK_DIR="$HOME/code"
DOTFILES_DIR="$HOME/dotfiles_for_docker"
docker run \
    --ipc=host \
    --net=host \
    --rm \
    -it \
    --privileged \
    -v $WORK_DIR:/home/$USER/workdir \
    -v $DOTFILES_DIR/profile.sh:/etc/profile.d/profile.sh \
    -v $DOTFILES_DIR/vimrc:/root/.vimrc \
    -v $DOTFILES_DIR/init.vim:/root/.config/nvim/init.vim \
    -v $DOTFILES_DIR/tmux.conf:/root/.tmux.conf \
    test-dotfiles-for-alpine \
    sh \
    --login
