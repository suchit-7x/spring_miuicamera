#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Public libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries-xiaomi.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/public.libraries-xiaomi.txt

# Camera
$(call soong_config_set_bool,camera,override_format_from_reserved,true)

# Priv-app permission
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Sysconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/miuicamera-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-allowlist.xml

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/spring-miuicam/spring-miuicam-vendor.mk)
