PRODUCT_PACKAGES += \
	libwpa_client \
	hostapd \
	wificond \
	wpa_supplicant \
	wpa_supplicant.conf \
	libandroid_native_app_glue \

PRODUCT_PACKAGES +=  \
    android.hardware.wifi@1.0-service \

PRODUCT_PACKAGES += \
	Launcher3 \
	com.android.masaki.mediaservice \
	com.android.masaki.mediahmi \
	MyNative \
	libmynative \
	
PRODUCT_PACKAGES += \
	mycamera \
	vendor.masaki.hardware.camera.provider@2.4-impl \
	vendor.masaki.hardware.camera.provider@2.4-service \

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \

PRODUCT_COPY_FILES += \
	device/generic/goldfish/wifi/WifiConfigStore.xml:data/misc/wifi/WifiConfigStore.xml \
	device/generic/goldfish/wifi/init.wifi.sh:vendor/bin/init.wifi.sh \
	
PRODUCT_COPY_FILES += \
	device/generic/common/ppp/ip-up:system/etc/ppp/ip-up \
	device/generic/common/ppp/ip-down:system/etc/ppp/ip-down \
	device/generic/common/ppp/peers/gprs:system/etc/ppp/peers/gprs \

PRODUCT_COPY_FILES +=  device/generic/goldfish/wifi/simulated_hostapd.conf:$(TARGET_COPY_OUT_VENDOR)/etc/simulated_hostapd.conf
PRODUCT_COPY_FILES +=  device/generic/x86emu/wpa_supplicant.conf:vendor/etc/wifi/wpa_supplicant.conf
PRODUCT_COPY_FILES +=  device/generic/x86emu/wpa_supplicant_overlay.conf:vendor/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.phone.density=420 \
	ro.sys.tablet.density=288 \
	ro.sys.largetablet.density=196 \


DEVICE_MANIFEST_FILE := device/generic/x86emu/manifest.xml
DEVICE_MATRIX_FILE   := device/generic/x86emu/compatibility_matrix.xml

BOARD_SEPOLICY_DIRS += device/generic/x86emu/sepolicy

$(call inherit-product-if-exists, device/generic/common/nativebridge/nativebridge.mk)
