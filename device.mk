
LOCAL_PATH := device/explay/fog2

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sun8i:root/fstab.sun8i \
    $(LOCAL_PATH)/rootdir/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    $(LOCAL_PATH)/rootdir/init.sun8i.rc:root/init.sun8i.rc \
    $(LOCAL_PATH)/rootdir/init.sun8i.usb.rc:root/init.sun8i.usb.rc \
    $(LOCAL_PATH)/rootdir/nand.ko:root/nand.ko \
    $(LOCAL_PATH)/rootdir/ueventd.sun8i.rc:root/ueventd.sun8i.rc

# System Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=120 \
	persist.sys.timezone=Europe/Moscow \
	persist.sys.language=ru \
	persist.sys.country=RU

# Navigation bar
PRODUCT_PROPERTY_OVERRIDES += \
	qemu.hw.mainkeys=0

# Mark as low ram device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true

# ART
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-flags=--no-watch-dog \
	dalvik.vm.dex2oat-filter=interpret-only \
	dalvik.vm.image-dex2oat-filter=speed \
	dalvik.vm.profiler=1

PRODUCT_DEX_PREOPT_DEFAULT_FLAGS := \
	--compiler-filter=interpret-only

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version = 131072 \
	drm.service.enabled=false

# Fix Graphics Issues
PRODUCT_PROPERTY_OVERRIDES += \
	ro.zygote.disable_gl_preload=true \
	ro.bq.gpu_to_cpu_unsupported=1

# Disable dirty region for Mali
PRODUCT_PROPERTY_OVERRIDES += \
debug.hwui.render_dirty_regions=false

# Debug
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    ro.hardware=sun8i

#    persist.sys.usb.config=mtp,adb

# APP CONFIGS
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := ldpi mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

