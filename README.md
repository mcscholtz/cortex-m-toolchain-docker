# About the Image

The image is based on Ubuntu 18.04, it includes gcc-arm-none-eabi-7-2018-q2 and cmake 3.12.2

# Building
```
git clone https://github.com/mcscholtz/cortex-m-toolchain-docker.git
cd cortex-m-toolchain-docker
docker build -t cortex-m-toolchain .
```

# Using the Image

```
docker run --rm -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp cortex-m-toolchain
```

You will drop to the docker shell and have access to the installed tools

```
root@58fc0b2d04b8:/usr/src/myapp# cmake --version
cmake version 3.12.2
CMake suite maintained and supported by Kitware (kitware.com/cmake).

root@58fc0b2d04b8:/usr/src/myapp# arm-none-eabi-gcc --version
arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]
Copyright (C) 2017 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```
