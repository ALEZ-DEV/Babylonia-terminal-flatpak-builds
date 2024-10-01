#!/bin/sh

# Build the Flutter app and package into an archive.
# Exit if any command fails
set -e

# Echo all commands for debug purposes
set -x

archiveName=babylonia-terminal.tar.gz
baseDir=$(pwd)

cd ./Babylonia-terminal/babylonia_terminal_launcher

rinf message
flutter pub get
flutter create --platform=linux .
flutter build linux

cd build/linux/x64/release/bundle || exit
tar -czaf $archiveName ./*
mv $archiveName "$baseDir"/
