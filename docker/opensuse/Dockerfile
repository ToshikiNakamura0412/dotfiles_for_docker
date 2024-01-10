FROM opensuse/leap:latest
ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd -g $USER_GID $USERNAME \
    && useradd -u $USER_UID -g $USER_GID -m $USERNAME \
    && zypper refresh \
    && zypper install -y sudo git vim \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
RUN zypper refresh && zypper update -y
# RUN zypper install -y \
#     cmake \
#     neovim \
#     tmux \
#     python3 \
#     python3-devel \
#     python3-pip \
#     curl \
#     timezone \
#     tree \
#     clang
# RUN zypper install -y --type pattern devel_basis

RUN ln -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ENV SHELL /bin/bash

USER $USERNAME

CMD ["/bin/bash"]
