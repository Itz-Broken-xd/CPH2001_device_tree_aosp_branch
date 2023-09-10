#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common Omni stuff.
# $(call inherit-product, vendor/omni/config/common.mk)

# Inherit from CPH2001 device
$(call inherit-product, device/oppo/CPH2001/device.mk)

PRODUCT_DEVICE := CPH2001
PRODUCT_NAME := twrp_CPH2001
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2001
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_SHIPPING_API_LEVEL := 28

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CPH2001-user 11 RP1A.200720.011 1670067820572 release-keys"

BUILD_FINGERPRINT := OPPO/CPH2001/CPH2001:11/RP1A.200720.011/1670067820572:user/release-keys
