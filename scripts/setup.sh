#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# tmux
echo ""
echo "setting tmux... "
if [ -d ~/.tmux ]; then
    rm -rf ~/.tmux
fi
ln -sfv $SCRIPT_DIR/../tmux.conf ~/.tmux.conf
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
echo ">>> Done"
echo ""

# Neovim
echo ""
echo "setting Neovim... "
if [ ! -d ~/.config/nvim ]; then
    mkdir -pv ~/.config/nvim
fi
ln -sfv $SCRIPT_DIR/../nvim/init.vim ~/.config/nvim/init.vim
ln -sfv $SCRIPT_DIR/../nvim/configs/basic-settings.vim ~/.config/nvim/basic-settings.vim
ln -sfv $SCRIPT_DIR/../nvim/configs/keymap.vim ~/.config/nvim/keymap.vim
ln -sfv $SCRIPT_DIR/../nvim/configs/plugin-keymap.vim ~/.config/nvim/plugin-keymap.vim
ln -sfv $SCRIPT_DIR/../nvim/configs/plugin-settings.vim ~/.config/nvim/plugin-settings.vim
ln -sfv $SCRIPT_DIR/../nvim/configs/plugin.vim ~/.config/nvim/plugin.vim
ln -sfv $SCRIPT_DIR/../nvim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -sfv $SCRIPT_DIR/../nvim/clang-format ~/.clang-format
/bin/bash -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
vim -c 'PlugInstall' -c qa
echo ">>> Done"
echo ""
