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
