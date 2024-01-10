FROM alpine:3.17
ARG USERNAME=user

RUN addgroup -S $USERNAME \
    && adduser -S $USERNAME -G $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && echo "$USERNAME:$USERNAME" | chpasswd
RUN apk add bash sudo
# RUN apk add \
#     bash \
#     git \
#     cmake \
#     neovim \
#     tmux \
#     build-base \
#     python3 \
#     python3-dev \
#     py3-pip \
#     curl \
#     tzdata \
#     tree \
#     clang

ENV SHELL /bin/bash
# RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
USER $USERNAME

CMD ["/bin/bash"]
