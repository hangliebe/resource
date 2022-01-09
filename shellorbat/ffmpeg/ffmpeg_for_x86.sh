#!/usr/bin/env bash

CURRENT_DIR=`pwd`
# 该脚本待验证
export BUILD_DIR=$CURRENT_DIR/out
export ABI=x86
export FFMPEG_DIR=$CURRENT_DIR/../ffmpeg-4.2.3
export NDK_ROOT=$CURRENT_DIR/../android-ndk-r20
export HOST_TAG=linux-x86_64

export TARGET_TRIPLE_MACHINE_BINUTILS=i686
export SYSROOT=$NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/sysroot
export TOOLCHAIN_PATH=$NDK_ROOT/toolchains/llvm/prebuilt/$HOST_TAG
export CROSS_PREFIX=$TOOLCHAIN_PATH/bin/i686-linux-android-
export CC=$TOOLCHAIN_PATH/bin/i686-linux-android16-clang

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


#--disable-sse4_1
#--disable-avx
#--disable-avx2
#--disable-avx512
