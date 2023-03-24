#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 yukiprjkt and UnifiedSuzuhimeProject
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a03s

# Release name
PRODUCT_RELEASE_NAME := a03s

# Inherit from common AOSP config
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a03s device
$(call inherit-product, device/samsung/a03s/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_a03s
PRODUCT_DEVICE := a03s
PRODUCT_MODEL := SM-A035F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
