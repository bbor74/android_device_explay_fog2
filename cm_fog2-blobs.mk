
LOCAL_PATH := device/explay/fog2

#egl
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/_prebuilt/system/lib/egl,system/lib/egl) \
    $(LOCAL_PATH)/_prebuilt/system/lib/hw/gralloc.sun8i.so:system/lib/hw/gralloc.sun8i.so \
    $(LOCAL_PATH)/_prebuilt/system/lib/libMali.so:system/lib/libMali.so \
    $(LOCAL_PATH)/_prebuilt/system/lib/libion.so:system/lib/libion.so

# Modules
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/_prebuilt/system/vendor/modules,system/vendor/modules)

