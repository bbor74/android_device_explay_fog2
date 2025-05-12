
LOCAL_PATH := device/explay/fog2

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#egl
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/_prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/_prebuilt/system/lib/hw/gralloc.sun8i.so:system/lib/hw/gralloc.sun8i.so \
    $(LOCAL_PATH)/_prebuilt/system/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    $(LOCAL_PATH)/_prebuilt/system/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    $(LOCAL_PATH)/_prebuilt/system/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    $(LOCAL_PATH)/_prebuilt/system/lib/libMali.so:system/lib/libMali.so \
    $(LOCAL_PATH)/_prebuilt/system/lib/libion.so:system/lib/libion.so

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sun8i:root/fstab.sun8i \
    $(LOCAL_PATH)/rootdir/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    $(LOCAL_PATH)/rootdir/init.sun8i.rc:root/init.sun8i.rc \
    $(LOCAL_PATH)/rootdir/init.sun8i.usb.rc:root/init.sun8i.usb.rc \
    $(LOCAL_PATH)/rootdir/nand.ko:root/nand.ko \
    $(LOCAL_PATH)/rootdir/ueventd.sun8i.rc:root/ueventd.sun8i.rc

# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/asix.ko:system/vendor/modules/asix.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/bma250.ko:system/vendor/modules/bma250.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/cam_detect.ko:system/vendor/modules/cam_detect.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/cci.ko:system/vendor/modules/cci.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/disp.ko:system/vendor/modules/disp.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/ft5402.ko:system/vendor/modules/ft5402.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/ft5x_ts.ko:system/vendor/modules/ft5x_ts.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/gslX680.ko:system/vendor/modules/gslX680.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/gslX680new.ko:system/vendor/modules/gslX680new.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/gt9xxf_ts.ko:system/vendor/modules/gt9xxf_ts.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/inet_ctp.ko:system/vendor/modules/inet_ctp.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/lcd.ko:system/vendor/modules/lcd.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/lcm330_gyr.ko:system/vendor/modules/gslX680.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/mali.ko:system/vendor/modules/mali.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/mcs7830.ko:system/vendor/modules/mcs7830.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/qf9700.ko:system/vendor/modules/qf9700.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/rtl8150.ko:system/vendor/modules/rtl8150.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/sunxi-keyboard.ko:system/vendor/modules/sunxi-keyboard.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/vfe_os.ko:system/vendor/modules/vfe_os.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/vfe_subdev.ko:system/vendor/modules/vfe_subdev.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/vfe_v4l2.ko:system/vendor/modules/vfe_v4l2.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/videobuf-core.ko:system/vendor/modules/videobuf-core.ko \
    $(LOCAL_PATH)/_prebuilt/system/vendor/modules/videobuf-dma-contig.ko:system/vendor/modules/videobuf-dma-contig.ko

# System Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=120 \
	persist.sys.timezone=Europe/Moscow \
	persist.sys.language=ru \
	persist.sys.country=RU

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

