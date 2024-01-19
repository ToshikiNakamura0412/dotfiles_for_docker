FROM nvidia/cuda:11.6.1-devel-ubuntu20.04
ARG ROS_DISTRO=noetic
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

RUN apt-get update && apt-get install -y lsb-release curl

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-${ROS_DISTRO}-desktop \
    python3-catkin-tools \
    python3-rosdep \
    && rm -rf /var/lib/apt/lists/*
RUN rosdep init
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     cmake \
#     build-essential \
#     python3 \
#     python3-dev \
#     python3-pip \
#     tree \
#     && rm -rf /var/lib/apt/lists/*
ENV SHELL /bin/bash

USER $USERNAME
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
RUN echo "source ~/ws/devel/setup.bash" >> ~/.bashrc
RUN echo "export ROS_DISTRO=${ROS_DISTRO}" >> ~/.bashrc
RUN echo "export ROS_WORKSPACE=~/ws" >> ~/.bashrc
RUN echo "export ROS_PACKAGE_PATH=~/ws/src:\$ROS_PACKAGE_PATH" >> ~/.bashrc
RUN echo "export ROSCONSOLE_FORMAT='[\${severity}] [\${time}] [\${node}]: \${message}'" >> ~/.bashrc
RUN git clone --recursive https://github.com/ToshikiNakamura0412/dotfiles_for_docker.git ~/dotfiles
RUN ~/dotfiles/install.sh

CMD ["/bin/bash"]
