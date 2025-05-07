#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := device/explay/fog2

USE_CAMERA_STUB := false

# image related
TARGET_NO_BOOTLOADER := true
# TARGET_NO_RECOVERY := true
# TARGET_NO_KERNEL := false

# Target Architecture
TARGET_BOARD_PLATFORM := polaris
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := exdroid

# CFLAGS
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=4 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Memory
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2013265920

TARGET_USERIMAGES_USE_EXT4 := true

# EGL
USE_OPENGL_RENDERER := true

# TWRP recovery
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TW_THEME := landscape_mdpi
TW_NO_HAPTICS := true
# TW_USE_TOOLBOX := true
TW_EXCLUDE_MTP := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_BASH := true
TW_EXCLUDE_NANO := true
TW_INCLUDE_CRYPTO := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TWHAVE_SELINUX := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TW_BRIGHTNESS_PATH := /sys/class/disp/disp/attr/lcd_bl
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_LANGUAGE := ru
TW_DEVICE_VERSION := by bbor74 

# TWRP_INCLUDE_LOGCAT := true
# TARGET_USES_LOGD := true

# SELinux
BOARD_SEPOLICY_DIRS += device/explay/fog2/sepolicy
BOARD_SEPOLICY_UNION += \
    init.te \
    kernel.te \
    logd.te \
    recovery.te \
    rootfs.te
