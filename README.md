# dotfiles_for_docker
## setting file
- Vim
- Neovim
- tmux
## docker
- alpine3.17
- debian
- fedora
- opensuse
- ubuntu ros
  - 20.04 + ROS1 Noetic
  - 20.04 + ROS1 Noetic + CUDA(devel)
- ubuntu20.04
## Usage
```
cd docker/<distro dir>
docker compose up -d        # create and start
docker compose exec ws bash # use shell
docker compose down         # stop and remove
```
