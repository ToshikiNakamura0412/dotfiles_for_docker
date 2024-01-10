FROM ubuntu:20.04
ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo git vim \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
RUN apt-get update && apt-get upgrade -y
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     cmake \
#     tmux \
#     build-essential \
#     python3 \
#     python3-dev \
#     python3-pip \
#     curl \
#     wget \
#     tzdata \
#     tree \
#     clangd \
#     nodejs \
#     npm
ENV SHELL /bin/bash

USER $USERNAME

CMD ["/bin/bash"]
