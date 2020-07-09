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

## Bootanimation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyYoungPlus

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/royssnfc/royssnfc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := royss
PRODUCT_NAME := lineage_royssnfc
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S6310N
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=royss \
    TARGET_DEVICE=royss \
    BUILD_FINGERPRINT=samsung/royssub/royss:4.4.4/KTU84Q/S6310NUBANH3:user/release-keys \
    PRIVATE_BUILD_DESC="royssub-user 4.4.4 KTU84Q S6310NUBANH3 release-keys"

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
