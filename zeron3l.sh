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
export KBUILD_BUILD_USER="Sam"
export KBUILD_BUILD_HOST="zerohost"
export CROSS_COMPILE=/mnt/kernel_stuff/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make CP8298_I00_defconfig -j8 ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-
cp -r arch/arm64/boot/Image.gz-dtb zipitbro/
cd zipitbro
mv Image.gz-dtb zImage 
zip -r ZeroAddition_Kernel_CP8298_I00.zip *
curl --ftp-pasv -T ZeroAddition_Kernel_CP8298_I00.zip ftp://Reapergod:bD0o2MGQYYjZ@uploads.androidfilehost.com 
rm -r ZeroAddition_Kernel_CP8298_I00.zip
cd ..
echo "build compiled and uploaded in AFH account inport and download it "
echo "╔════╗╔═══╗╔═══╗╔═══╗╔═══╗╔═══╗╔═══╗╔══╗╔════╗╔══╗╔═══╗╔═╗─╔╗"
echo "╚══╗═║║╔══╝║╔═╗║║╔═╗║║╔═╗║╚╗╔╗║╚╗╔╗║╚╣─╝║╔╗╔╗║╚╣─╝║╔═╗║║║╚╗║║"
echo "──╔╝╔╝║╚══╗║╚═╝║║║─║║║║─║║─║║║║─║║║║─║║─╚╝║║╚╝─║║─║║─║║║╔╗╚╝║"
echo "─╔╝╔╝─║╔══╝║╔╗╔╝║║─║║║╚═╝║─║║║║─║║║║─║║───║║───║║─║║─║║║║╚╗║║"
echo "╔╝═╚═╗║╚══╗║║║╚╗║╚═╝║║╔═╗║╔╝╚╝║╔╝╚╝║╔╣─╗──║║──╔╣─╗║╚═╝║║║─║║║"
echo "╚════╝╚═══╝╚╝╚═╝╚═══╝╚╝─╚╝╚═══╝╚═══╝╚══╝──╚╝──╚══╝╚═══╝╚╝─╚═╝"


