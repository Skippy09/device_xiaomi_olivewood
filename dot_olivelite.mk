#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from olivelite device
$(call inherit-product, device/xiaomi/olivelite/device.mk)

# Offline Charging
TARGET_INCLUDE_PIXEL_CHARGER := true

# Inherit some LineageOS stuff.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_LIVE_WALLPAPERS := false
$(call inherit-product, vendor/dot/config/common.mk)

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dot_olivelite
PRODUCT_DEVICE := olivelite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8A/8A Dual
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=olivelite
