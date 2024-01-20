# dotfiles_for_docker
Setting for aliases, shell, git, neovim and tmux
## Clone
```
git clone --recursive https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git ~/dotfiles_for_docker
```
## docker
- [WIP] alpine3.17
- [WIP] debian
- [WIP] fedora
- [WIP] opensuse
- ubuntu ros
  - 20.04 + ROS1 Noetic
  - 20.04 + ROS1 Noetic + CUDA(devel)
- ubuntu20.04
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
docker compose exec ws bash
# zsh (ubuntu)
docker compose exec ws zsh
```
## Font
Set your terminal font as `Hack Nerd Font`

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack/Regular
## Recommendation
- It is recommended that you build the image provided and create an image based on it.
- Use `docker compose up` to check if the build is done correctly.
