# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Reaper stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/reaper/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/Z00A/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/Z00A/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := reaper_Z00A
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00A
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00A

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z00A \
	BUILD_FINGERPRINT=asus/WW_Z00A/Z00A:6.0.1/MMB29P/4.21.40.134_20160825_4746_user:user/release-keys \
    PRIVATE_BUILD_DESC="asusmofd_fhd-user 6.0.1 MMB29P 4.21.40.134_20160825_4746_user release-keys"
    
# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Roberto Correa (B14ckr3dst4r)"
