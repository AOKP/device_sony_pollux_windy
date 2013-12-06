# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit AOSP device configuration for anzu
$(call inherit-product-if-exists, device/sony/pollux_windy/full_pollux_windy.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP311 BUILD_FINGERPRINT=Sony/SGP311_1272-1907/SGP311:4.1.2/10.1.C.0.344/p35_rw:user/release-keys PRIVATE_BUILD_DESC="SGP311-user 4.1.2 10.1.C.0.344 p35_rw test-keys"

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true
