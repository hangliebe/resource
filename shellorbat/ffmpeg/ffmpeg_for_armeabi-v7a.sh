#!/usr/bin/env bash
CURRENT_DIR=`pwd`

export BUILD_DIR=$CURRENT_DIR/out
export ABI=armeabi-v7a
export FFMPEG_DIR=$CURRENT_DIR/../ffmpeg-4.2.3
export NDK_ROOT=$CURRENT_DIR/../android-ndk-r20
export HOST_TAG=linux-x86_64

export TARGET_TRIPLE_MACHINE_BINUTILS=arm
export SYSROOT=$NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/sysroot
export TOOLCHAIN_PATH=$NDK_ROOT/toolchains/llvm/prebuilt/$HOST_TAG
export CROSS_PREFIX=$TOOLCHAIN_PATH/bin/arm-linux-androideabi-
export CC=$TOOLCHAIN_PATH/bin/armv7a-linux-androideabi16-clang

$FFMPEG_DIR/configure \
--prefix=${BUILD_DIR}/${ABI} \
--enable-cross-compile \
--target-os=android \
--arch=${TARGET_TRIPLE_MACHINE_BINUTILS} \
--sysroot=${SYSROOT} \
--cross-prefix=${CROSS_PREFIX} \
--cc=${CC} \
--extra-cflags="-O3 -fPIC" \
--enable-shared \
--disable-static \
