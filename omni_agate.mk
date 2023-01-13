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
    PRIVATE_BUILD_DESC="vnd_agate-user 12 SP1A.210812.016 V13.0.9.0.SKWEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vnd_agate/agate:12/SP1A.210812.016/V13.0.9.0.SKWEUXM:user/release-keys
