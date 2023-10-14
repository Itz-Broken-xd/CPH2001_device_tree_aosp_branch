# Android device tree for OPPO CPH2001 (Oppo F15)

```
#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
<hr>

### How to build
Use the minimal manifest twrp aosp 11 [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/tree/twrp-11) \
Clone this repository as it is the device tree. (git clone this repo under $manifest/device/oppo/CPH2001)
and use these commands:
```
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_CPH2001-eng
export TW_DEVICE_VERSION
mka -j$(nproc --all) recoveryimage
```
