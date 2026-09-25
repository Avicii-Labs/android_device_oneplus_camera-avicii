#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

CAMERA_PATH := device/oneplus/camera

# Camera
PRODUCT_PACKAGES += \
    libcamera2ndk_vendor \
    libstdc++_vendor

# Init
PRODUCT_COPY_FILES += \
    $(CAMERA_PATH)/init/init.oneplus.camera.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.oneplus.camera.rc

# Properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.oneplus.camera

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.camera.privapp.list=com.oneplus.camera \
    persist.vendor.camera.privapp.list=com.oneplus.camera \
    ro.oplus.version.base=1.21.7250.2023122816073522520246

PRODUCT_VENDOR_PROPERTIES += \
    vendor.camera.algo.jpeghwencode=0 \
    vendor.camera.aux.packagelist=android,com.oneplus.camera \
    vendor.camera.skip_unconfigure.packagelist=com.oneplus.camera

# Inherit from the OnePlus Camera vendor makefile.
$(call inherit-product, vendor/oneplus/camera/camera-vendor.mk)
