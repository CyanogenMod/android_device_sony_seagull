# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/sony/msm8226-common/device.mk)
$(call inherit-product, vendor/sony/seagull/seagull-vendor.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    device/sony/seagull/rootdir/system/usr/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
    device/sony/seagull/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/seagull/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/seagull/rootdir/system/etc/sec_config:system/etc/sec_config \
    device/sony/seagull/rootdir/init.yukon.dev.rc:root/init.yukon.dev.rc \
    device/sony/seagull/rootdir/fstab.yukon:root/fstab.yukon \
    device/sony/seagull/rootdir/logo.rle:root/logo.rle

PRODUCT_NAME := aosp_d5103
PRODUCT_DEVICE := seagull
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia T3 (AOSP)
PRODUCT_LOCALES += xhdpi hdpi
PRODUCT_MANUFACTURER := Sony

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=280

