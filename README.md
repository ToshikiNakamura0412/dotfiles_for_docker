# dotfiles_for_docker
- Setting for aliases, shell, git, neovim and tmux
- tmux
  - prefix key: `Ctrl-q`
## Clone
```
git clone --recursive https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git ~/dotfiles_for_docker
```
## docker
- [WIP] alpine3.17
- [WIP] debian
- [WIP] fedora
- [WIP] opensuse
- ubuntu ros (default shell: zsh)
  - 20.04 + ROS1 Noetic
  - 20.04 + ROS1 Noetic + CUDA(devel)
  - 22.04 + ROS2 Humble
    - Neovim is deprecated for ROS2 development
    - Please use VSCode
- ubuntu20.04 (default shell: zsh)
## Usage
### basic
```
cd docker/<distro dir>
docker compose up [option -d]  # create and start
docker compose down            # stop and remove
```
### use shell
```
# bash
cd docker/<distro dir>
docker compose exec ws bash
# zsh (ubuntu)
cd docker/<distro dir>
docker compose exec ws zsh
```
### use VSCode
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
