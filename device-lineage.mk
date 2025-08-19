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

# PixelSupport
include device/google/gs-common/pixelsupport/pixelsupport.mk

# Viper4Android FX
-include packages/apps/ViPER4AndroidFX/config.mk

# Build necessary packages for vendor

# Dumpstate
PRODUCT_PACKAGES += \
    dump_gsc.sh

# Graphics
PRODUCT_PACKAGES += \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# Sensors
PRODUCT_PACKAGES += \
    sensors.dynamic_sensor_hal

#PRODUCT_HOST_PACKAGES += \
       libartpalette
