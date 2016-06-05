# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/samsung/msm7x27a-common/msm7x27a.mk

# Initlogo
PRODUCT_COPY_FILES += \
    device/samsung/royssnfc/ramdisk/initlogo.rle:root/initlogo.rle

## NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    nfc_nci.msm7x27a \
    Tag

## NFC permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),userdebug)
    NFCEE_ACCESS_PATH := device/samsung/royssnfc/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/samsung/royssnfc/nfc/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    device/samsung/royssnfc/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

$(call inherit-product, vendor/samsung/royssnfc/royssnfc-vendor.mk)
