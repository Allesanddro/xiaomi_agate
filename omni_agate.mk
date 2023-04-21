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

# Inherit from agate device
$(call inherit-product, device/xiaomi/agate/device.mk)

PRODUCT_DEVICE := agate
PRODUCT_NAME := omni_agate
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := agate
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="agate-user 11 RP1A.200720.011 V12.5.5.0.RKWEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/agate/agate:11/RP1A.200720.011/V12.5.5.0.RKWEUXM:user/release-keys
