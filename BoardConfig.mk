# Camera Setup
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/toshiba/paz00/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_BOARD_INFO_FILE := device/toshiba/paz00/board-info.txt
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := paz00

ARCH_ARM_HAVE_TLS_REGISTER := true

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

# Modem
TARGET_NO_RADIOIMAGE 			:= true

# Use Old Style USB Mounting Untill we get kernel source
BOARD_USE_USB_MASS_STORAGE_SWITCH 	:= true

# custom recovery ui
BOARD_CUSTOM_RECOVERY_KEYMAPPING 	:= ../../device/toshiba/paz00/recovery/recovery_ui.c

# Wifi related defines
# v6 
#CONFIG_DRIVER_AR6000 			:= true
#CONFIG_DRIVER_WEXT 			:= true
#CONFIG_DRIVER_HOSTAP			:= true
#CONFIG_DRIVER_NL80211			:= true
#CONFIG_DRIVER_WIRED			:= true
#BOARD_WPA_SUPPLICANT_DRIVER 		:= AR6000
#WPA_SUPPLICANT_VERSION      		:= VER_0_6_X
#BOARD_WEXT_NO_COMBO_SCAN		:= true

BOARD_WPA_SUPPLICANT_DRIVER 		:= NL80211
WPA_SUPPLICANT_VERSION 			:= VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 	:= lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER 			:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 		:= lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE 			:= wlan0

WIFI_DRIVER_MODULE_NAME                 := rt2800usb
WIFI_DRIVER_MODULE_PATH                 := /system/lib/modules/rt2800usb.ko

#BOARD_WLAN_ATHEROS_SDK 		:= hardware/AR6kSDK.3.1/AR6kSDK.build_3.1_RC.563
#BOARD_WLAN_CHIP_AR6003 		:= true

# Bluetooth
BOARD_HAVE_BLUETOOTH 			:= true
BOARD_HAVE_BLUETOOTH_BCM 		:= true
#BOARD_HAVE_BLUETOOTH_CSR 		:= true

BOARD_KERNEL_CMDLINE 			:= panic=10 video=tegrafb console=tty0,115200n8 no_console_suspend=1 tegraboot=sdmmc androidboot.hardware=paz00 tegrapart=recovery:300:a00:800,boot:d00:1000:800,mbr:1d00:200:800,system:1f00:25800:800,cache:27700:32000:800,misc:59700:400:800,store:59c00:9a600:800,userdata:f4300:df3500:800

BOARD_KERNEL_BASE 			:= 0x10000000
BOARD_PAGE_SIZE 			:= 0x00000800

# Audio
#BOARD_USES_ALSA_AUDIO			:= true
BUILD_WITH_ALSA_UTILS			:= true
BOARD_USES_GENERIC_AUDIO 		:= true
BOARD_USES_AUDIO_LEGACY 		:= false
TARGET_USES_OLD_LIBSENSORS_HAL 		:= false

BOARD_EGL_CFG 				:= device/toshiba/paz00/egl.cfg
TARGET_OTA_ASSERT_DEVICE 		:= paz00,ac100,GT-P7510

# Partitions 
BOARD_HAS_LARGE_FILESYSTEM 		:= true
TARGET_USERIMAGES_USE_EXT4		:= true
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 1294991360
BOARD_FLASH_BLOCK_SIZE 			:= 131072

# Disable spase in image creation, otherwise image not mountble
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION 		:= true

# dont build recovery
TARGET_NO_RECOVERY 			:= true

# Indicate that the board has an Internal SD Card
#BOARD_HAS_SDCARD_INTERNAL 		:= true

BOARD_DATA_DEVICE 			:= /dev/block/mmcblk0p6
BOARD_DATA_FILESYSTEM 			:= ext4
BOARD_CACHE_DEVICE 			:= /dev/block/mmcblk0p4
BOARD_CACHE_FILESYSTEM 			:= ext4
BOARD_SYSTEM_DEVICE 			:= /dev/block/mmcblk0p3
BOARD_SYSTEM_FILESYSTEM 		:= ext4
BOARD_HAS_NO_SELECT_BUTTON 		:= true

# Vold settings
BOARD_VOLD_MAX_PARTITIONS 		:= 11
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR	:= false
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS	:= false

BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER 	:= true

# Use nicer font rendering
BOARD_USE_SKIA_LCDTEXT 			:= true

# test
USE_E2FSPROGS				:= true
BOARD_HAVE_GPS				:= false
#PRODUCT_CHARACTERISTICS		 := tablet
BOARD_USES_SECURE_SERVICES		:= true
BOARD_SKIP_ANDROID_DOC_BUILD		:= true
TARGET_HAS_THIRD_PARTY_APPS		:= true
