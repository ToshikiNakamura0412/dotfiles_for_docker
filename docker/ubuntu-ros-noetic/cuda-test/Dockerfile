FROM nvidia/cuda:12.3.1-devel-ubuntu20.04


ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo git vim curl wget lsb-release \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
ENV SHELL /bin/bash
USER $USERNAME
WORKDIR /home/$USERNAME

CMD ["bash"]
