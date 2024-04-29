#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8450-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/wly

# Display
TARGET_SCREEN_DENSITY := 450

#TARGET_NO_RECOVERY := true

# DTB/O
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Vibrator
SOONG_CONFIG_NAMESPACES += OPLUS_LINEAGE_VIBRATOR_HAL
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL := \
    INCLUDE_DIR \
    USE_EFFECT_STREAM
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL_INCLUDE_DIR := \
    $(DEVICE_PATH)/vibrator/include
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL_USE_EFFECT_STREAM := true

# Include the proprietary files BoardConfig.
include vendor/oneplus/wly/BoardConfigVendor.mk
