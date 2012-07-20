#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# Base config files
PRODUCT_COPY_FILES += \
    device/toshiba/paz00/prebuild/init.rc:root/init.rc \
    device/toshiba/paz00/prebuild/init.paz00.rc:root/init.paz00.rc \
    device/toshiba/paz00/prebuild/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc \
    device/toshiba/paz00/prebuild/init.local.rc:system/etc/init.local.rc \
    device/toshiba/paz00/prebuild/init.sh:system/etc/init.sh \
    device/toshiba/paz00/prebuild/init.paz00.sh:system/etc/init.paz00.sh \
    device/toshiba/paz00/prebuild/ueventd.paz00.rc:root/ueventd.paz00.rc \
    device/toshiba/paz00/prebuild/media_profiles.xml:system/etc/media_profiles.xml \
    device/toshiba/paz00/prebuild/egalax_i2c.idc:system/usr/idc/egalax_i2c.idc \
    device/toshiba/paz00/prebuild/egalax_ts.idc:system/usr/idc/egalax_ts.idc \
    device/toshiba/paz00/prebuild/01NVOptimalization:system/etc/init.d/01NVOptimalization \
    device/toshiba/paz00/prebuild/02PmDebug:system/etc/init.d/02PmDebug \
    device/toshiba/paz00/prebuild/fstab.paz00:root/fstab.paz00  

#Permissopn fiels
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.nvidia.display.xml:system/etc/permissions/com.nvidia.display.xml \
    frameworks/native/data/etc/com.tmus.gslate.apps.xml:system/etc/permissions/com.tmus.gslate.apps.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Keychars and  Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keymaps/cpcap-key.kcm:system/usr/keychars/cpcap-key.kcm \
    $(LOCAL_PATH)/keymaps/gpio-keys.kcm:system/usr/keychars/gpio-keys.kcm \
    $(LOCAL_PATH)/keymaps/nvec_cir.kcm:system/usr/keychars/nvec_cir.kcm \
    $(LOCAL_PATH)/keymaps/nvec_keyboard.kcm:system/usr/keychars/nvec_keyboard.kcm \
    $(LOCAL_PATH)/keymaps/tegra-kbc.kcm:system/usr/keychars/tegra-kbc.kcm \
    $(LOCAL_PATH)/keymaps/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    $(LOCAL_PATH)/keymaps/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keymaps/nvec_cir.kl:system/usr/keylayout/nvec_cir.kl \
    $(LOCAL_PATH)/keymaps/nvec_keyboard.kl:system/usr/keylayout/nvec_keyboard.kl \
    $(LOCAL_PATH)/keymaps/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl 

# Vold
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/prebuild/vold.fstab:system/etc/vold.fstab


# WiFi/BT Firmware
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/prebuild/firmware/rt2870.bin:system/vendor/firmware/rt2870.bin


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/hostapd.conf:system/etc/wifi/hostapd.conf

# Some files for 3G
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ppp/ip-up:/system/etc/ppp/ip-up \
    $(LOCAL_PATH)/ppp/ip-down:/system/etc/ppp/ip-down

PRODUCT_PACKAGES := \
    make_ext4fs \
    com.android.future.usb.accessory \
    hwprops

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072 \
    wifi.interface=wlan0 \
    keyguard.no_require_sim=true \
    hwui.render_dirty_regions=false \
    ro.sf.lcd_density=120 

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    persist.sys.strictmode.visual=0

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.strictmode.visual=0

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := xlarge mdpi

DEVICE_PACKAGE_OVERLAYS := \
    device/toshiba/paz00/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    librs_jni \
    liba2dp \
    lights.tegra \
    com.android.future.usb.accessory \
    camera.tegra \
    libpkip \
    libaudioutils \
    tinyplay \
    tinycap \
    tinymix \
    libhuaweigeneric-ril \
    audio.primary.tegra \
    audio.a2dp.default \
    FolioParts \
    wmiconfig

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs

# Force rotation to landscape, not clean solution
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.sf.hwrotation=270 \
    ro.sf.fakerotation=true

# Enable logcat logging into file
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    debug.logcat=0

# Extra apps
PRODUCT_PACKAGES += \
    FileManager \
    dropbear \
    libmbm-ril \
    VideoChatCameraTestApp \
    RpcPerformance \
    procstatlog \
    alsamixer 

$(call inherit-product-if-exists, vendor/toshiba/paz00/device-vendor.mk)
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

# Get the alsa files
#$(call inherit-product-if-exists,hardware/libaudio/alsa.mk)
