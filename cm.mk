# Boot animation	  	
TARGET_SCREEN_HEIGHT := 800	
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_tablet_wifionly.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/s7/device_s7.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_s7
PRODUCT_DEVICE := s7
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := IDEOS S7-10X
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=S7_HW_SE TARGET_DEVICE=qsd8k_s7
