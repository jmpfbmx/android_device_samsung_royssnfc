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
PRODUCT_NAME := cm_royssnfc
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S6310
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=royss TARGET_DEVICE=royss BUILD_FINGERPRINT=samsung/royssub/royss:4.4.4/KTU84Q/S6310LUBANH3:user/release-keys PRIVATE_BUILD_DESC="royssub-user 4.4.4 KTU84Q S6310LUBANH3 release-keys"

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
