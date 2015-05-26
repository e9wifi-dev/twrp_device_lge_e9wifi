LOCAL_PATH := device/lge/e9wifi

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/e9wifi/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/fstab.e9wifi:root/fstab.e9wifi

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := e9wifi
PRODUCT_BRAND := LGE
