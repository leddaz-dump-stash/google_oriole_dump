#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oriole device
$(call inherit-product, device/google/oriole/device.mk)

PRODUCT_DEVICE := oriole
PRODUCT_NAME := lineage_oriole
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ3A.230805.001 10316531 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ3A.230805.001/10316531:user/release-keys
