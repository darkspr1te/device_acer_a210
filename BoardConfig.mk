# inherit from the proprietary version
-include vendor/acer/a210/BoardConfigVendor.mk
include device/acer/t30-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := picasso_e2
TARGET_OTA_ASSERT_DEVICE := picasso_e2,a210_pa_cus1
TARGET_KERNEL_CONFIG := picasso_e2a_defconfig
TARGET_KERNEL_SOURCE := kernel/acer/kernel
BOARD_BLUEDROID_VENDOR_CONF := device/acer/a210/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/acer/a210/bluetooth

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
#BOARD_SEPOLICY_DIRS += \
#        device/acer/t30-common/sepolicy

#BOARD_SEPOLICY_UNION += \
#        file_contexts \
#        genfs_contexts \
#        app.te \
#        device.te \
#        drmserver.te \
#        file.te \
#        mediaserver.te \
#        surfaceflinger.te \
#        system.te \
#        zygote.te
