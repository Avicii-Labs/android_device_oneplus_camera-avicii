#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Camera
$(call soong_config_set_bool,camera,override_format_from_reserved,true)
$(call soong_config_set,camera,package_name,com.oneplus.camera)

# SEPolicy
include device/oneplus/camera/sepolicy/SEPolicy.mk

# Inherit from the OnePlus Camera vendor BoardConfig.
-include vendor/oneplus/camera/BoardConfigVendor.mk
