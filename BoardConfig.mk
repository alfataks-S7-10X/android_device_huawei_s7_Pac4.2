TARGET_SPECIFIC_HEADER_PATH := device/huawei/s7/include

USE_CAMERA_STUB := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Platform
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_ARCH_VARIANT_CPU := cortex-a8
TARGET_GRALLOC_USES_ASHMEM := true

# Flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

#kernel
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=s7
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/s7/kernel_recovery
TARGET_KERNEL_SOURCE := kernel/huawei/s7
TARGET_KERNEL_CONFIG := s7_defconfig
#TARGET_PREBUILT_KERNEL := device/huawei/s7/kernel

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
TARGET_QCOM_AUDIO_VARIANT := legacy
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_USES_LEGACY_MEDIA := true
BOARD_USES_LEGACY_QCOM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_NO_SECURE_PLAYBACK

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/huawei/s7/prebuilt/system/lib/egl/egl.cfg
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_USES_GENLOCK := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := false
#TARGET_DISABLE_TRIPLE_BUFFERING := true
#BOARD_EGL_NEEDS_LEGACY_FB := true
#COMMON_GLOBAL_CFLAGS += -DTARGET_8x50

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true
BOARD_CAMERA_USE_MM_HEAP := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/rtecdc-bcm4319.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/rtecdc-apsta-bcm4319.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/rtecdc-bcm4319.bin nvram_path=/system/etc/wifi/nvram-bcm4319.txt firmware_softap_path=/system/etc/wifi/rtecdc-apsta-bcm4319.bin"
WIFI_DRIVER_MODULE_NAME     := "dhd"

# GPS
BOARD_GPS_LIBRARIES = libloc
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true 

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# external storage
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 262144000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 167772160
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_USES_MMCUTILS := true

# Recovery
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := s7
TARGET_OTA_ASSERT_DEVICE := s7,qsd8k_s7

#BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_LDPI_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/s7/recovery/recovery_ui.c
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_FSTAB := device/huawei/s7/recovery/recovery.fstab
BOARD_CUSTOM_GRAPHICS  := ../../../device/huawei/s7/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/huawei/s7/recovery/recovery.rc

# USB sheezle
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_MASS_STORAGE_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Usb connection to PC
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Input
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
SMALLER_FONT_FOOTPRINT := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# fix work on old kernel
BOARD_WEXT_NO_COMBO_SCAN := true

# RADIO
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"
BOARD_PROVIDES_LIBRIL := true

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    service.adb.enable=1 \
    sys.usb.config=adb
