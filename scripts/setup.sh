#!/bin/bash

source /etc/os-release
OS_NAME=$(echo $ID)
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# tmux
echo ""
echo "setting tmux... "
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -sfv $SCRIPT_DIR/../tmux.conf ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
echo ">>> Done"
echo ""

# Neovim
$SCRIPT_DIR/../nvim/scripts/setup_nvim.sh

# zsh
if [ $OS_NAME = "ubuntu" ]; then
    echo ""
    echo "setting zsh... "
    ln -sfv $SCRIPT_DIR/../zsh/zshrc ~/.zshrc
    ln -sfv $SCRIPT_DIR/../zsh/p10k.zsh ~/.p10k.zsh
    echo ">>> Done"
    echo ""
fi
