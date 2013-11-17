# inherit from the proprietary version
-include vendor/acer/a210/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := picasso_e2
TARGET_OTA_ASSERT_DEVICE := picasso_e2,a210_pa_cus1
TARGET_KERNEL_CONFIG := tegra3_defconfig
BOARD_BLUEDROID_VENDOR_CONF := device/acer/a210/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/acer/a210/bluetooth

#should now include t30 common for common pre set values, over whats needed here
include device/acer/t30-common/BoardConfigCommon.mk

