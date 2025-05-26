## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := Polaris

# Inherit device configuration
$(call inherit-product, device/explay/fog2/device.mk)
$(call inherit-product, device/explay/fog2/lineage_fog2-blobs.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fog2
PRODUCT_NAME := lineage_fog2
PRODUCT_BRAND := Explay
PRODUCT_MODEL := Favorite
PRODUCT_MANUFACTURER := Explay
