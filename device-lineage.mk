#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-lineage

# ANGLE - Almost Native Graphics Layer Engine
PRODUCT_PACKAGES += \
    ANGLE

# GMS
WITH_GMS_COMMS_SUITE := false

# RRO
PRODUCT_PACKAGES += \
    GrilRadioCustomizableNoRadio \
    SettingsGoogleTangorproOverlay \
    TangorproGMSOverlay \
    TitanSettingsOverlay \
    TitanSettingsProviderOverlay \
    TitanSysuiConfigOverlay

# Basic Call Recorder
include vendor/bcr/bcr.mk

# Build necessary packages for vendor

# Codec2
PRODUCT_PACKAGES += \
    libacryl \
    libacryl_hdr_plugin \
    libexynosv4l2

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# Sensors
PRODUCT_PACKAGES += \
    sensors.dynamic_sensor_hal
