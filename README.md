# dotfiles_for_docker

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

- This repository is developed for [dockerfiles](https://github.com/ToshikiNakamura0412/dockerfiles.git)
- Setting for aliases, shell, git, neovim and tmux
- tmux
  - prefix key: `Ctrl-q`

## Environment
- [WIP] alpine3.17
- [WIP] debian
- [WIP] fedora
- [WIP] opensuse
- Ubuntu20.04, 22.04

## Installation
```
git clone --recursive https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git ~/dotfiles
~/dotfiles/install.sh
```

## Font
Set your terminal font as `Hack Nerd Font`

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack/Regular

## [Neovim] C/C++ Completion for ROS1
If you want to enable C/C++ completion for ROS1, please execute the following:
```
# enable simple completion
# - add following paths
#   - /opt/ros/<ROS DISTRO>/include
#   - <target package>/include
cd <target package>
create_simple_compile_flags

# build and enable completion related to target package
cd <target package>
cbt_export_compile_commands
```
