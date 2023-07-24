FROM alpine:3.17

RUN apk add \
    cmake \
    git \
    vim \
    neovim \
    tmux \
    build-base \
    python3 \
    python3-dev \
    py3-pip \
    curl \
    tree

RUN pip3 install neovim pynvim
RUN mkdir -p /root/.vim/undo
RUN mkdir -p /root/.vim/plugged
RUN mkdir -p /root/.config/nvim

RUN git clone https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git /root/dotfiles_for_docker
ENV DOTFILES="/root/dotfiles_for_docker"
RUN cp $DOTFILES/profile.sh /etc/profile.d/profile.sh
RUN cp $DOTFILES/vimrc /root/.vimrc
RUN cp $DOTFILES/init.vim /root/.config/nvim/init.vim
RUN cp $DOTFILES/tmux.conf /root/.tmux.conf
