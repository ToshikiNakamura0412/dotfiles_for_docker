#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# tmux
echo "setting tmux... "
if [ -d ~/.tmux ]; then
    rm -rf ~/.tmux
fi
ln -sfv $SCRIPT_DIR/tmux.conf ~/.tmux.conf
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
echo ">>> Done"
echo ""

echo ""
echo "==="
echo "Finish!!"
echo "==="
