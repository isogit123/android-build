#!/bin/bash

SDK_URL="https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip"
ANDROID_HOME=/usr/android-sdk

# Download Android SDK

echo ":: Install Android SDK"
echo ""
mkdir -p "$ANDROID_HOME" .android
cd "$ANDROID_HOME"
curl -o sdk.zip ${SDK_URL}
unzip sdk.zip
rm sdk.zip
mv cmdline-tools latest
mkdir cmdline-tools
mv latest cmdline-tools
yes | $ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --licenses

echo ":: Set ANDROID_HOME to ENV"
echo ""

echo -e "export ANDROID_HOME=$ANDROID_HOME\n" >> ~/.bashrc

echo ":: Successful"
echo ""
