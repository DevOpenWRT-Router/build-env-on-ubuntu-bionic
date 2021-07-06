#!/bin/bash
[ -f /etc/os-release ] && . /etc/os-release

sudo apt-get -qq install bison g++-multilib git gperf libxml2-utils make zip patchelf
[ ${UBUNTU_CODENAME} = "bionic" ] && sudo apt-get -y install python-networkx
sudo apt-get -qq install flex curl libncurses5-dev libssl-dev zlib1g-dev gawk minicom
sudo apt-get -qq install openjdk-8-jdk

# uboot v2016
sudo apt-get -qq install device-tree-compiler

# kernel release-4.4
sudo apt-get -qq install liblz4-tool
sudo apt-get -qq install bison

# recommended
sudo apt-get -qq install openssh-server vim
sudo apt-get -qq install qemu-user-static
sudo apt-get -qq install exfat-fuse exfat-utils p7zip-full tree

# build git-2.18+
sudo apt-get -qq install autoconf
sudo apt-get -qq install libcurl4-openssl-dev libssh-dev

# build x86-x64 kernel
sudo apt-get -qq install pkg-config
sudo apt-get -qq install libelf-dev

# build mtd-utils v2.0.2+
sudo apt-get -qq install libtool

# virtualbox
sudo apt-get -qq install libqt5core5a libqt5gui5 libqt5opengl5 \
	libqt5printsupport5 libqt5widgets5 libqt5x11extras5 libsdl1.2debian

# buildroot (rockchip)
sudo apt-get -qq install texinfo
sudo apt-get -qq install genext2fs

# crosstool-ng
sudo apt-get -qq install lzip help2man libtool libtool-bin

# qemu
sudo apt-get -qq install debootstrap

# for allwinner
sudo apt-get -qq install u-boot-tools swig python-dev python3-dev

# act-greq
sudo apt -qq install ack-grep

# openwrt
sudo apt-get -qq install time gettext java-propose-classpath apt zstd

# simg2img
[ ${UBUNTU_CODENAME} = "bionic" ] && sudo apt-get -qq install android-tools-fsutils
[ ${UBUNTU_CODENAME} = "focal" ] && sudo apt-get -qq install android-sdk-libsparse-utils

# libreELEC
sudo apt-get -qq install bc lzop xfonts-utils xfonts-utils xfonts-utils xsltproc libjson-perl

# for openwrt armhf
sudo apt-get -qq install libc6:i386

# for wireguard
sudo apt-get -qq install libmnl-dev

exit 0
