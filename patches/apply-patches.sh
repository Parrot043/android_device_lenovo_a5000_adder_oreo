#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/highscreen/giraffe/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/highscreen/giraffe/patches/0020-healthd_batteryVoltage.patch
cd ../..
cd bionic
patch -p1 < ../device/highscreen/giraffe/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..
cd frameworks/av
patch -p1 < ../../device/highscreen/giraffe/patches/0006-fix-access-wvm-to-ReadOptions.patch
patch -p1 < ../../device/highscreen/giraffe/patches/0007-Disable-usage-of-get_capture_position.patch
patch -p1 < ../../device/highscreen/giraffe/patches/0008-Partial-Revert-Camera1-API-Support-SW-encoders.patch
patch -p1 < ../../device/highscreen/giraffe/patches/0009-add-mtk-color-format-support.patch
cd ../..
cd system/netd
patch -p1 < ../../device/highscreen/giraffe/patches/netd.patch
cd ../..

