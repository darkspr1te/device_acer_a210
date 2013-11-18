$(call inherit-product-if-exists, vendor/acer/a210/a210-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/acer/a210/overlay

# USB config contains product-specific USB id
PRODUCT_COPY_FILES += \
    device/acer/a210/prebuilt/ramdisk/init.acer.usb.rc:root/init.acer.usb.rc \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# So init files are copied properly in device_base.mk
PRODUCT_BOOTLOADER := picasso_e2

# Inherit t30-common
$(call inherit-product, device/acer/t30-common/device_base.mk)


$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


# The gps config appropriate for this device (TODO)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# TODO: LtoDownloader

#rest is non t30 common so is device specific - not verified 


#DEVICE_PACKAGE_OVERLAYS += device/acer/a210/overlay


#PRODUCT_COPY_FILES += \
#    device/acer/a210/prebuilt/ramdisk/init.picasso_e2.rc:root/init.picasso_e2.rc \
#    device/acer/a210/prebuilt/ramdisk/fstab.picasso_e2:root/fstab.picasso_e2 \
#    device/acer/a210/prebuilt/ramdisk/ueventd.picasso_e2.rc:root/ueventd.picasso_e2.rc \
#    device/acer/a210/prebuilt/ramdisk/init.picasso_e2.usb.rc:root/init.picasso_e2.usb.rc \



