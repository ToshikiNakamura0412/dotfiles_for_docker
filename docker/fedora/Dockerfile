FROM fedora:latest

RUN dnf install -y \
    cmake \
    make \
    automake \
    gcc \
    gcc-c++ \
    kernel-devel \
    git \
    vim \
    neovim \
    tmux \
    python3 \
    python3-devel \
    python3-pip \
    curl \
    tzdata \
    tree \
    clang

RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN pip3 install neovim pynvim jedi
RUN mkdir -p /root/.vim/undo
RUN mkdir -p /root/.vim/plugged
RUN mkdir -p /root/.config/nvim

RUN git clone https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git /root/dotfiles
ENV DOTFILES="/root/dotfiles"
RUN cp $DOTFILES/profile.sh /etc/profile.d/profile.sh
RUN cp $DOTFILES/vim/vimrc /root/.vimrc
RUN cp $DOTFILES/vim/init.vim /root/.config/nvim/init.vim
RUN cp $DOTFILES/tmux.conf /root/.tmux.conf
