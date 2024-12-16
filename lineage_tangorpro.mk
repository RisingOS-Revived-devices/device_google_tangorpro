#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
DEVICE_CODENAME := tangorpro
DEVICE_PATH := device/google/tangorpro
VENDOR_PATH := vendor/google/tangorpro
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Tablet
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560

# Addons
TARGET_HAS_UDFPS := true

# Gms 
WITH_GMS := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Lawnchair Prebuilt
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

RISING_MAINTAINER=EliteDarkKaiser

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tangorpro-user 15 BP1A.250305.020.T2 13023825 release-keys" \
    BuildFingerprint=google/tangorpro/tangorpro:15/BP1A.250305.020.T2/13023825:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
