# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/adder/lineage_adder.mk)

LOCAL_PATH := device/highscreen/giraffe

# Common CM stuff
CM_BUILD := giraffe

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=7.1.2/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="adder-user 7.1.2 MRA58M 2280749 release-keys"

PRODUCT_NAME := lineage_adder
PRODUCT_DEVICE := adder
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := A5000

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="adder"

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.sprout.rc:root/init.sprout.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.sprout:root/fstab.sprout

# Release name
PRODUCT_RELEASE_NAME := A5000
