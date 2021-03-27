PRODUCT_SOONG_NAMESPACES += \
    vendor/dirac

VENDOR_PATH := vendor/dirac

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/etc/permissions/audiosphere.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/audiosphere.xml \
    $(VENDOR_PATH)/framework/audiosphere.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/audiosphere.jar \
    $(VENDOR_PATH)/vendor/lib/libDiracAPI_SHARED.so:$(TARGET_COPY_OUT_VENDOR)/lib/libDiracAPI_SHARED.so \
    $(VENDOR_PATH)/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    $(VENDOR_PATH)/vendor/etc/diracmobile.config:$(TARGET_COPY_OUT_VENDOR)/etc/diracmobile.config \
    $(VENDOR_PATH)/vendor/etc/diracvdd.bin:$(TARGET_COPY_OUT_VENDOR)/etc/diracvdd.bin

BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# Dirac
PRODUCT_PACKAGES += \
    XiaomiDirac \

# Props ($PATH_PROP)
TARGET_VENDOR_PROP += $(VENDOR_PATH)/dirac.prop
