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
export KBUILD_BUILD_USER="Mohan"
export KBUILD_BUILD_HOST="zerohost"
export CROSS_COMPILE=/mnt/kernel_stuff/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make CP8676_I02_defconfig -j8 ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-
cp -r arch/arm64/boot/Image.gz-dtb zipitbro/
cd zipitbro
mv Image.gz-dtb zImage 
zip -r ZeroAddition_Kernel_CP8676_I02.zip *
curl --ftp-pasv -T ZeroAddition_Kernel_CP8676_I02.zip http://ftp://MohanTest:ANnTWRoORJ@uploads.androidfilehost.com 
rm -r ZeroAddition_Kernel_CP8676_I02.zip
cd ..
echo "build compiled and uploaded in AFH account inport and download it "
echo "╔════╗╔═══╗╔═══╗╔═══╗╔═══╗╔═══╗╔═══╗╔══╗╔════╗╔══╗╔═══╗╔═╗─╔╗"
echo "╚══╗═║║╔══╝║╔═╗║║╔═╗║║╔═╗║╚╗╔╗║╚╗╔╗║╚╣─╝║╔╗╔╗║╚╣─╝║╔═╗║║║╚╗║║"
echo "──╔╝╔╝║╚══╗║╚═╝║║║─║║║║─║║─║║║║─║║║║─║║─╚╝║║╚╝─║║─║║─║║║╔╗╚╝║"
echo "─╔╝╔╝─║╔══╝║╔╗╔╝║║─║║║╚═╝║─║║║║─║║║║─║║───║║───║║─║║─║║║║╚╗║║"
echo "╔╝═╚═╗║╚══╗║║║╚╗║╚═╝║║╔═╗║╔╝╚╝║╔╝╚╝║╔╣─╗──║║──╔╣─╗║╚═╝║║║─║║║"
echo "╚════╝╚═══╝╚╝╚═╝╚═══╝╚╝─╚╝╚═══╝╚═══╝╚══╝──╚╝──╚══╝╚═══╝╚╝─╚═╝"


