# Use the latest ubuntu LTS as the base image
FROM ubuntu:18.04
USER root
WORKDIR /tools

# Install devtools + latest gcc-arm-none-eabi & cmake
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        build-essential \ 
        git \ 
        bzip2 \ 
        wget && \ 
    apt-get clean && \
    wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 -O cortex_m.tar.bz2 && \
    tar -xjf cortex_m.tar.bz2 && \
    rm cortex_m.tar.bz2 && \
    wget https://cmake.org/files/v3.12/cmake-3.12.2-Linux-x86_64.tar.gz -O cmake.tar.gz && \
    tar xf cmake.tar.gz && \
    rm cmake.tar.gz

# Add tools to path
ENV PATH "/tools/cmake-3.12.2-Linux-x86_64/bin:/tools/gcc-arm-none-eabi-7-2018-q2-update/bin:$PATH"
