# Broken Os Specific Changes

# Boot animation
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536
TARGET_BOOTANIION_HALF_RES := true

# Inherit some common broken stuff.
#$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
#$(call inherit-product, vendor/bliss/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

$(call inherit-product-if-exists, vendor/htc/flounder/device-vendor.mk)

# Extra Packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flounder \
    BUILD_FINGERPRINT=google/volantis/flounder:7.0/NRD90R/314966:user/release-keys \
    PRIVATE_BUILD_DESC="volantis-user 7.0 NRD90R 314966 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
