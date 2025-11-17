#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from missi device
$(call inherit-product, device/xiaomi/missi/device.mk)

PRODUCT_DEVICE := missi
PRODUCT_NAME := twrp_missi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := missi
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_id-user 15 AP3A.240905.015.A2 A15.0.6.0.VGWIDXM release-keys"

BUILD_FINGERPRINT := Redmi/missi/missi:15/AP3A.240905.015.A2/A15.0.6.0.VGWIDXM:user/release-keys
