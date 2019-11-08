PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/vendor/lib/libreference-ril.so

# This is a build configuration for a full-featured build of the
# Open-Source part of the tree. It's geared toward a US-centric
# build quite specifically for the emulator, and might not be
# entirely appropriate to inherit from for on-device configurations.
PRODUCT_COPY_FILES += \
    development/sys-img/advancedFeatures.ini:advancedFeatures.ini \
    device/generic/goldfish/data/etc/encryptionkey.img:encryptionkey.img \

include $(SRC_TARGET_DIR)/product/full_x86.mk

PRODUCT_NAME := x86emu
PRODUCT_DEVICE := x86emu
PRODUCT_BRAND := x86emu
PRODUCT_MODEL := x86emu

## 
TARGET_KERNEL_SOURCE := kernel
TARGET_KERNEL_CONFIG := i386_ranchu_defconfig
TARGET_ARCH := x86

PRODUCT_OUT ?= out/target/product/x86emu

include device/generic/x86emu/AndroidKernel.mk

# define build targets for kernel
.PHONY: $(TARGET_KERNEL)

LOCAL_KERNEL := $(TARGET_KERNEL)

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel-ranchu \



