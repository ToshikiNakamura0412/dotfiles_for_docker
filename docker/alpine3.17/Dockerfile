FROM alpine:3.17
ARG USERNAME=user

RUN addgroup -S $USERNAME \
    && adduser -S $USERNAME -G $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && echo "$USERNAME:$USERNAME" | chpasswd
RUN apk update && apk add bash sudo git vim tzdata
RUN apk update && apk upgrade
# RUN apk update && apk add \
#     cmake \
#     neovim \
#     tmux \
#     build-base \
#     python3 \
#     python3-dev \
#     py3-pip \
#     curl \
#     tree \
#     clang
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
ENV SHELL /bin/bash

USER $USERNAME

CMD ["/bin/bash"]
