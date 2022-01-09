# 安卓FFmpeg编译方案

文档[在Android中使用FFmpeg进阶1](https://hangliebe.com/2021/11/15/2021-11-15-在Android中使用FFmpeg进阶1/)中查看相关信息。

## For Linux

**下载FFmpeg**

```
wget https://ffmpeg.org/releases/ffmpeg-4.2.3.tar.gz
tar -zxvf ffmpeg-4.2.3.tar.gz 
```

**下载NDK**

以NDK_r23为例

```
wget https://dl.google.com/android/repository/android-ndk-r23b-linux.zip
unzip android-ndk-r23-linux-x86_64.zip
```

**ABI armeabi-v7a**

编译命令：[ffmpeg_for_armeabi-v7a.sh](https://gitee.com/hangliebe/resource/blob/master/shellorbat/ffmpeg/ffmpeg_for_armeabi-v7a.sh)

**ABI arm64-v8a**

编译命令：[ffmpeg_for_arm64-v8a.sh](https://gitee.com/hangliebe/resource/blob/master/shellorbat/ffmpeg/ffmpeg_for_arm64-v8a.sh)

**ABI x86**

编译命令：[ffmpeg_for_x86.sh](https://gitee.com/hangliebe/resource/blob/master/shellorbat/ffmpeg/ffmpeg_for_x86.sh)

**ABI x86_64**

编译命令：[ffmpeg_for_x86_64.sh](https://gitee.com/hangliebe/resource/blob/master/shellorbat/ffmpeg/ffmpeg_for_x86_64.sh)
