# dotfiles_for_docker
- Setting for aliases, shell, git, neovim, tmux and vscode
- tmux
  - prefix key: `Ctrl-q`
## Clone
```
git clone --recursive https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git ~/dotfiles_for_docker
```
## install for docker
```
~/dotfiles_for_docker/install.sh
```
## docker
- [WIP] alpine3.17
- [WIP] debian
- [WIP] fedora
- [WIP] opensuse
- ubuntu (default shell: zsh)
  - 20.04
  - 22.04
- ubuntu ros (default shell: zsh)
  - 20.04 + ROS1 Noetic
  - 20.04 + ROS1 Noetic + PCL
    - This is a different build procedure from the others, so please refer to [README.md](https://github.com/ToshikiNakamura0412/dotfiles_for_docker/tree/master/docker/ubuntu-ros/noetic-pcl/README.md)
  - 20.04 + ROS1 Noetic + CUDA(devel)
  - 20.04 + ROS1 Noetic + CUDA(devel) + OpenCV
    - This is a different build procedure from the others, so please refer to [README.md](https://github.com/ToshikiNakamura0412/dotfiles_for_docker/tree/master/docker/ubuntu-ros/noetic-cuda-opencv/README.md)
  - 22.04 + ROS2 Humble
    - **Neovim is deprecated for ROS2 C/C++ development**
    - Please use VSCode
### workspace
- host:
  - default: `~/ws`
  - ROS1: `~/ros1_ws`
  - ROS2: `~/ros2_ws`
- container: `~/ws`
### Usage
#### setup
```
~/dotfiles_for_docker/setup_host.sh
```
#### basic usage
```
cd docker/<distro dir>
docker compose up [option -d]  # create and start
docker compose down            # stop and remove
```
#### use shell
```
# bash (All Distro Support)
cd docker/<distro dir>
docker compose exec ws bash
# zsh (Ubuntu Support)
cd docker/<distro dir>
docker compose exec ws zsh
```
#### use VSCode
prerequisite: extension `ms-vscode-remote.remote-containers`
```
cd docker/<distro dir>
code .
```
- Click on `Reopen in container` to run container
## Font
Set your terminal font as `Hack Nerd Font`

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack/Regular
## Recommendation
- It is recommended that you build the image provided and create an image based on it.
- Use `docker compose up` to check if the build is done correctly.
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
