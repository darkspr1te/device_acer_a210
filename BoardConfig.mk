# inherit from the proprietary version
-include vendor/acer/a210/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := picasso_e2
TARGET_OTA_ASSERT_DEVICE := picasso_e2,a210_pa_cus1
TARGET_KERNEL_CONFIG := picasso_e2b_defconfig
TARGET_KERNEL_SOURCE := kernel/acer/kernel
BOARD_BLUEDROID_VENDOR_CONF := device/acer/a210/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/acer/a210/bluetooth

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629145600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29905387520
BOARD_FLASH_BLOCK_SIZE := 4096



# BOARD_RECOVERY_SWIPE :=
# BOARD_HAS_NO_SELECT_BUTTON :=
# BOARD_UMS_LUNFILE :=
# BOARD_RECOVERY_ALWAYS_WIPES :=
# BOARD_RECOVERY_HANDLES_MOUNT :=
# BOARD_TOUCH_RECOVERY :=
#RECOVERY_EXTEND_NANDROID_MENU := true
# TARGET_USE_CUSTOM_LUN_FILE_PATH :=
# TARGET_DEVICE :=
#RECOVERY_NAME := darkspr1te
#TARGET_RECOVERY_FSTAB := device/acer/a210/recovery.fstab


TARGET_BOARD_PLATFORM := tegra

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629145600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29905387520
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_RECOVERY_FSTAB := device/acer/t30-common/prebuilt/ramdisk/fstab.acer

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"



# Wi-Fi AP
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_NO_APSME_ATTR := true

#TARGET_KERNEL_SOURCE := kernel/acer/t30

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := false
BOARD_USES_TINY_AUDIO_HW := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

BOARD_USES_GENERIC_INVENSENSE := true

# Misc display settings
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/acer/a210/bluetooth/vnd_a210.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/acer/a210/bluetooth


BOARD_EGL_CFG := device/acer/t30-common/prebuilt/etc/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
USE_OPENGL_RENDERER := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true



BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Samsung EMMC brick bug
# Already disabled in kernel, but disable again for safety
BOARD_SUPPRESS_EMMC_WIPE := true

#BOARD_SEPOLICY_DIRS += \
#	device/acer/t30-common/sepolicy

#BOARD_SEPOLICY_UNION += \
#	file_contexts \
#	genfs_contexts \
#	app.te \
#	device.te \
#	drmserver.te \
#	file.te \
#	mediaserver.te \
#	surfaceflinger.te \
#	system.te \
#	zygote.te
