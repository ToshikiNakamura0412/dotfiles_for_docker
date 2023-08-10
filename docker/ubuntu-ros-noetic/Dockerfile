FROM ros:noetic-ros-base

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
    clang \
    python3-catkin-tools

RUN pip3 install neovim pynvim jedi
RUN mkdir -p /root/.vim/undo
RUN mkdir -p /root/.vim/plugged
RUN mkdir -p /root/.config/nvim
RUN mkdir -p /root/catkin_ws/src/<pkg-name>

RUN git clone https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git /root/dotfiles
ENV DOTFILES="/root/dotfiles"
RUN cp $DOTFILES/profile.sh /etc/profile.d/profile.sh
RUN cp $DOTFILES/rosconfig.sh /etc/profile.d/rosconfig.sh
RUN cp $DOTFILES/vimrc /root/.vimrc
RUN cp $DOTFILES/init.vim /root/.config/nvim/init.vim
RUN cp $DOTFILES/tmux.conf /root/.tmux.conf
