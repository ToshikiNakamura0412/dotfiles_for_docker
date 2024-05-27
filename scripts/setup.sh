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

# Vim/Neovim
$SCRIPT_DIR/../nvim/configs/basic/install.sh
$SCRIPT_DIR/../nvim/install.sh

# zsh
if [ $OS_NAME = "ubuntu" ]; then
    echo ""
    echo "setting zsh... "
    ln -sfv $SCRIPT_DIR/../zsh/zshrc ~/.zshrc
    ln -sfv $SCRIPT_DIR/../zsh/p10k.zsh ~/.p10k.zsh
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    echo ">>> Done"
    echo ""
fi

# git
echo "setting git... "
ln -sfv $SCRIPT_DIR/../gitconfig ~/.gitconfig
if [ ! -d ~/.config/git ]; then
    mkdir -pv ~/.config/git
fi
ln -sfv $SCRIPT_DIR/../gitignore ~/.config/git/ignore
echo ">>> Done"
echo ""

# alias
echo "setting alias... "
echo "source $SCRIPT_DIR/../profile.sh" >> ~/.bashrc
if [ -f ~/.zshrc ]; then
    echo "source $SCRIPT_DIR/../profile.sh" >> ~/.zshrc
fi
echo ">>> Done"
