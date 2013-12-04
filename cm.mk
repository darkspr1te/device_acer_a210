## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := A210

# Boot Animation
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/acer/a210/full_a210.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a210
PRODUCT_NAME := cm_a210
PRODUCT_BRAND := Acer
PRODUCT_MODEL := a210
PRODUCT_MANUFACTURER := Acer

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cm_A210 \
    TARGET_DEVICE=picasso_e2 \
    BUILD_FINGERPRINT="acer/A210_pa_cus1/picasso_e2:4.1.2/JZO54K/1354108731:user/release-keys" \
    PRIVATE_BUILD_DESC="A210_pa_cus1-user 4.1.2 JZ054K 1354108731 release-keys"
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.debuggable=1 persist.sys.usb.config=mtp persist.service.adb.enable=1
