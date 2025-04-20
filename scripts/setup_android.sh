#!/bin/bash

# Android AAR 下载
ANDROID_URL="https://repo1.maven.org/maven2/com/arthenica/ffmpeg-kit-full-gpl/6.0-2/ffmpeg-kit-full-gpl-6.0-2.aar"
mkdir -p libs
curl -L $ANDROID_URL -o libs/com.arthenica.ffmpegkit-flutter-6.0.2.aar