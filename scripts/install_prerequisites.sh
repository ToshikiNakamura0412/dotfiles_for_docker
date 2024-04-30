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

# vim
if [ $OS_NAME = "ubuntu" ] || [ $OS_NAME = "debian" ]; then
    sudo apt-get update && sudo apt-get install -y --no-install-recommends vim-gtk
fi

# zsh
if [ $OS_NAME = "ubuntu" ]; then
    sudo apt-get update && sudo apt-get install -y --no-install-recommends zsh
    git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
