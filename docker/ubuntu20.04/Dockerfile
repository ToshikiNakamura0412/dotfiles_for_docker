FROM ubuntu:20.04

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt update
RUN apt install -y --no-install-recommends \
    cmake \
    git \
    vim \
    neovim \
    tmux \
    build-essential \
    python3 \
    python3-dev \
    python3-pip \
    curl \
    tzdata \
    tree \
    clang


RUN pip3 install neovim pynvim jedi
RUN mkdir -p /root/.vim/undo
RUN mkdir -p /root/.vim/plugged
RUN mkdir -p /root/.config/nvim

RUN git clone https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git /root/dotfiles_for_docker
ENV DOTFILES="/root/dotfiles_for_docker"
RUN cp $DOTFILES/profile.sh /etc/profile.d/profile.sh
RUN cp $DOTFILES/vimrc /root/.vimrc
RUN cp $DOTFILES/init.vim /root/.config/nvim/init.vim
RUN cp $DOTFILES/tmux.conf /root/.tmux.conf
