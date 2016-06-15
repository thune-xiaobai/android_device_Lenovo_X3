# Release name
PRODUCT_RELEASE_NAME := X3

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Lenovo/X3/device_X3.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X3
PRODUCT_NAME := cm_X3
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo X3
PRODUCT_MANUFACTURER := Lenovo
