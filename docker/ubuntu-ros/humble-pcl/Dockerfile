FROM humble-ws

# pcl installation
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    wget \
    unzip \
    pcl-tools
RUN cd ~/ \
    && wget -O pcl.zip https://github.com/PointCloudLibrary/pcl/archive/refs/tags/pcl-1.14.0.zip \
    && unzip pcl.zip \
    && cd pcl-pcl-1.14.0 \
    && cmake -S . -B build -DCMAKE_BUILD_TYPE=Release \
    && cmake --build build \
    && cd build \
    && sudo make install \
    && rm ~/pcl.zip
