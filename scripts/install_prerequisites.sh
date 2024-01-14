#!/bin/bash

source /etc/os-release
OS_NAME=$(echo $ID)
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# tmux
if [ $OS_NAME = "ubuntu" ] || [ $OS_NAME = "debian" ]; then
    sudo apt-get update && sudo apt-get install -y --no-install-recommends tmux
elif [ $OS_NAME = "alpine" ]; then
    sudo apk update && sudo apk add tmux
fi

# Neovim
$SCRIPT_DIR/../nvim/scripts/install_prerequisites.sh
