$(call inherit-product-if-exists, vendor/acer/a210/a210-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device (TODO)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# TODO: LtoDownloader
PRODUCT_BOOTLOADER := picasso_e2

#disable selinux


PRODUCT_AAPT_CONFIG := normal large xlarge hdpi
PRODUCT_AAPT_PREF_CONFIG := xlarge hdpi

DEVICE_PACKAGE_OVERLAYS += device/acer/t30-common/overlay

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072 \
    persist.tegra.nvmmlite=1 \
    nvidia.hwc.mirror_mode=crop \
    tf.enable=y \
    wifi.interface=wlan0 \
    ro.carrier=wifi-only
#darkspr1te unsure 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zygote.disable_gl_preload=1 \
    ro.opengles.version=131072


# Set default USB interface
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#	persist.sys.usb.config=mtp
# Don't store dalvik on /cache, it gets annoying when /cache is wiped
# by the bootloader everytime we boot into recovery

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    #disable selinux for now darkspr1te
	ro.boot.selinux=disabled

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# We copy fstab twice, fstab.acer for init, fstab.$(PRODUCT_BOOTLOADER) for vold
PRODUCT_COPY_FILES += \
    device/acer/t30-common/prebuilt/ramdisk/fstab.acer:root/fstab.acer \
    device/acer/t30-common/prebuilt/ramdisk/fstab.acer:root/fstab.$(PRODUCT_BOOTLOADER) \
#    device/acer/t30-common/prebuilt/ramdisk/ueventd.target.rc:root/ueventd.$(PRODUCT_BOOTLOADER).rc \
#   device/acer/t30-common/prebuilt/ramdisk/init.target.rc:root/init.$(PRODUCT_BOOTLOADER).rc \

PRODUCT_COPY_FILES += \
     frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml 
PRODUCT_COPY_FILES += \
    device/acer/t30-common/prebuilt/etc/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    device/acer/t30-common/prebuilt/usr/idc/acer-touch.idc:system/usr/idc/acer-touch.idc \
    device/acer/t30-common/prebuilt/usr/keylayout/Acer-AK00LB.kl:system/usr/keylayout/Acer-AK00LB.kl \
    device/acer/t30-common/prebuilt/usr/keylayout/Acer-ICONIA-TAB-KB01.kl:system/usr/keylayout/Acer-ICONIA-TAB-KB01.kl \
    device/acer/t30-common/prebuilt/usr/keylayout/acer-dock.kl:system/usr/keylayout/acer-dock.kl \
    device/acer/t30-common/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl
# SELinux
#ifeq ($(HAVE_SELINUX),true)
#PRODUCT_PACKAGES += \
#    libselinux libsepol
#endif

#attempt to fix wifi 
PRODUCT_COPY_FILES += \
    device/acer/a210/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
  wifi.interface=wlan0 \
  androidboot.commchip_id=0 \
    wifi.supplicant_scan_interval=180
    
PRODUCT_COPY_FILES += \
    device/acer/a210/configs/bashrc:system/etc/bash/bashrc \
    device/acer/a210/configs/mkshrc:system/etc/mkshrc \
    device/acer/a210/configs/busybox.fstab:system/etc/fstab

# Kernel tweaks
PRODUCT_COPY_FILES += \
   device/acer/a210/configs/sysctl.conf:system/etc/sysctl.conf
#end of test 
#
PRODUCT_PACKAGES := \
    audio.primary.tegra \
    libaudioutils \
    libbt-utils \
    camera.tegra \
    sensors.tegra \
    audio.a2dp.default \
    audio.usb.default \
    bluetooth.default \
    a1026_init \
    librs_jni \
    make_ext4fs \
    setup_fs \
    l2ping \
    hcitool \
    bttest \
    wifimacwriter \
    focal \
    tinymix \
     LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    camera \
    libnetcmdiface \
    libdashplayer \
    com.android.future.usb.accessory

PRODUCT_CHARACTERISTICS := tablet

# Audio config
PRODUCT_COPY_FILES += \
    device/acer/t30-common/tiny_hw.xml:system/etc/sound/$(PRODUCT_BOOTLOADER) \
    device/acer/t30-common/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf

# media config xml file
PRODUCT_COPY_FILES += \
    device/acer/a210/media_codecs.xml:system/etc/media_codecs.xml \
    device/acer/a210/media_profiles.xml:system/etc/media_profiles.xml \
    device/acer/a210/audio_policy.conf:system/etc/audio_policy.conf    

# Bluetooth config file
#PRODUCT_COPY_FILES += \
#    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf \

WIFI_BAND := 802_11_BG
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)


# USB config contains product-specific USB id
PRODUCT_COPY_FILES += \
    device/acer/a210/prebuilt/ramdisk/init.acer.usb.rc:root/init.acer.usb.rc 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240
# Disable SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.selinux=disabled

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
    persist.tegra.nvmmlite=1 \
    ro.zygote.disable_gl_preload=1
    
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# TODO: LtoDownloader

DEVICE_PACKAGE_OVERLAYS += device/acer/a210/overlay

PRODUCT_COPY_FILES += \
    device/acer/a210/prebuilt/ramdisk/init.picasso_e2.rc:root/init.picasso_e2.rc \
    device/acer/a210/prebuilt/ramdisk/ueventd.picasso_e2.rc:root/ueventd.picasso_e2.rc \
#    device/acer/a210/prebuilt/ramdisk/fstab.picasso_e2:root/fstab.picasso_e2 \
 #   device/acer/a210/prebuilt/ramdisk/init.picasso_e2.usb.rc:root/init.picasso_e2.usb.rc \
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bashrc:system/etc/bash/bashrc \
    $(LOCAL_PATH)/configs/mkshrc:system/etc/mkshrc \
    $(LOCAL_PATH)/configs/busybox.fstab:system/etc/fstab


$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
