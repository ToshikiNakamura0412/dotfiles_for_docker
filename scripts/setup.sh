#!/bin/bash
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
