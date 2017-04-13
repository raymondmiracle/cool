#!/bin/sh
echo "╔════╗╔═══╗╔═══╗╔═══╗╔═══╗╔═══╗╔═══╗╔══╗╔════╗╔══╗╔═══╗╔═╗─╔╗"
echo "╚══╗═║║╔══╝║╔═╗║║╔═╗║║╔═╗║╚╗╔╗║╚╗╔╗║╚╣─╝║╔╗╔╗║╚╣─╝║╔═╗║║║╚╗║║"
echo "──╔╝╔╝║╚══╗║╚═╝║║║─║║║║─║║─║║║║─║║║║─║║─╚╝║║╚╝─║║─║║─║║║╔╗╚╝║"
echo "─╔╝╔╝─║╔══╝║╔╗╔╝║║─║║║╚═╝║─║║║║─║║║║─║║───║║───║║─║║─║║║║╚╗║║"
echo "╔╝═╚═╗║╚══╗║║║╚╗║╚═╝║║╔═╗║╔╝╚╝║╔╝╚╝║╔╣─╗──║║──╔╣─╗║╚═╝║║║─║║║"
echo "╚════╝╚═══╝╚╝╚═╝╚═══╝╚╝─╚╝╚═══╝╚═══╝╚══╝──╚╝──╚══╝╚═══╝╚╝─╚═╝"
echo "ZeroAddon kernel  by A.M.T "
PATH=${PATH}:${PWD}/toolchain/bin/
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER="subzero"
export KBUILD_BUILD_HOST="zerohost"
export CROSS_COMPILE=/mnt/kernel_stuff/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make CP8676_I02_defconfig ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-


