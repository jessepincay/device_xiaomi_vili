#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from haydn device
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit some common Superior stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Stuff Superior Extended
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true

# Mantainer
MAINTAINER := Jezzay97

# Blur
TARGET_ENABLE_BLUR := true

# Pixel Stuff
TARGET_INCLUDE_PIXEL_CHARGER := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2107113SG
PRODUCT_NAME := superior_vili

PRODUCT_SYSTEM_NAME := vili_global
PRODUCT_SYSTEM_DEVICE := vili

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vili_global-user 13 RKQ1.211001.001 V14.0.4.0.TKDMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/vili_global/vili:13/RKQ1.211001.001/V14.0.4.0.TKDMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
