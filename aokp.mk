# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/polux_windy/full_polux_windy.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aokp_pollux_windy
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := polux_windy
PRODUCT_MODEL := Xperia Tablet Z WiFi
PRODUCT_MANUFACTURER := Sony

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP311 BUILD_FINGERPRINT=Sony/SGP311_1272-1907/SGP311:4.1.2/10.1.C.0.344/p35_rw:user/release-keys PRIVATE_BUILD_DESC="SGP311-user 4.1.2 10.1.C.0.344 p35_rw test-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera \
    Mms \
    Music

# Copy anzu specific prebuilt files
PRODUCT_PACKAGES += \
    ThinkFree  

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
