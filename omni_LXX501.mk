#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from LXX501 device
$(call inherit-product, device/lava/LXX501/device.mk)

PRODUCT_DEVICE := LXX501
PRODUCT_NAME := omni_LXX501
PRODUCT_BRAND := LAVA
PRODUCT_MODEL := LAVA LXX501
PRODUCT_MANUFACTURER := lava

PRODUCT_GMS_CLIENTID_BASE := android-lava

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6833v1_64-user 11 RP1A.200720.011 1661159587 release-keys"

BUILD_FINGERPRINT := LAVA/LXX501/LXX501:11/RP1A.200720.011/1661159587:user/release-keys
