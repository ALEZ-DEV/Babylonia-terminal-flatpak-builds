# Build the Flutter app and package into an archive.
# Exit if any command fails
set -e
 
# Echo all commands for debug purposes
set -x
 
projectName=Babylonia-terminal
 
archiveName=$projectName.tar.gz
baseDir=$(pwd)
 

# ----------------------------- Build Flutter app ---------------------------- #
 
rinf message
flutter pub get
flutter build linux
 
cd build/linux/x64/release/bundle || exit
tar -czaf $archiveName ./*
mv $archiveName "$baseDir"/
