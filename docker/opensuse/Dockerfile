FROM opensuse/leap:latest

RUN zypper install -y \
    cmake \
    git \
    vim \
    neovim \
    tmux \
    python3 \
    python3-devel \
    python3-pip \
    curl \
    timezone \
    tree \
    clang
RUN zypper install -y --type pattern devel_basis

RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN pip3 install neovim pynvim jedi
RUN mkdir -p /root/.vim/undo
RUN mkdir -p /root/.vim/plugged
RUN mkdir -p /root/.config/nvim

RUN git clone https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git /root/dotfiles
ENV DOTFILES="/root/dotfiles"
RUN cp $DOTFILES/profile.sh /root/.bashrc
RUN cp $DOTFILES/vimrc /root/.vimrc
RUN cp $DOTFILES/init.vim /root/.config/nvim/init.vim
RUN cp $DOTFILES/tmux.conf /root/.tmux.conf