#!/bin/sh
rootdirectory="$PWD"
dirs="bionic frameworks/av system/core system/sepolicy system/"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
    echo "Applying $dir patches..."
	git apply $rootdirectory/device/xiaomi/hermes/patches/$dir/*.patch
done

echo "Done!"
cd $rootdirectory
