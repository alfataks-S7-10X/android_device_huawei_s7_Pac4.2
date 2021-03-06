#
# Copyright (C) 2011 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/huawei/s7/overlay
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal large ldpi mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_CHARACTERISTICS := tablet

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.s7 \
    audio_policy.s7 \
    libaudioutils \
    audio.usb.default

# Graphics
PRODUCT_PACKAGES += \
    gralloc.qsd8k \
    copybit.qsd8k \
    hwcomposer.qsd8k \
    libgenlock \
    libhwcexternal \
    libhwcservice \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libc2dcolorconvert

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libtilerenderer \
    libOmxVdec \
    libOmxVidEnc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc

# Camera
PRODUCT_PACKAGES += \
    camera \
    camera.qsd8k

# GPS
PRODUCT_PACKAGES += \
    librpc \
    gps.s7

# Sensors, lights
PRODUCT_PACKAGES += \
    lights.s7 \
    sensors.s7

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni

# WiFi
PRODUCT_PACKAGES += \
    libnetcmdiface

# QRNGD
PRODUCT_PACKAGES += \
    qrngd

# Bt
PRODUCT_PACKAGES += \
    bluetoothd \
    hciconfig \
    hcitool \
    brcm_patchram_plus

# Power
#PRODUCT_PACKAGES += \
#    power.qsd8k

# Other
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \
    dexpreopt \
    wpa_supplicant.conf

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Init
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/root/init.s7.rc:root/init.s7.rc \
    device/huawei/s7/prebuilt/root/init.s7.usb.rc:root/init.s7.usb.rc \
    device/huawei/s7/prebuilt/root/ueventd.s7.rc:root/ueventd.rc
#    device/huawei/s7/prebuilt/root/init.power.rc:root/init.power.rc \

# Init post-boot script
#PRODUCT_COPY_FILES += \
#    device/huawei/s7/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

# GPU
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/huawei/s7/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/huawei/s7/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/s7/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/s7/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/s7/prebuilt/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/huawei/s7/prebuilt/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/huawei/s7/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/huawei/s7/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/huawei/s7/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/huawei/s7/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

# Firmware
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/s7/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Layout, Keychars, calibration
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/usr/idc/t1320.idc:system/usr/idc/t1320.idc \
    device/huawei/s7/prebuilt/system/usr/idc/t1320.idc:system/usr/idc/msm_touchscreen.idc \
    device/huawei/s7/prebuilt/system/usr/idc/t1320.idc:system/usr/idc/cypress120-i2c-touchscreen-ere.idc.old \
    device/huawei/s7/prebuilt/system/usr/idc/cypress120-i2c-touchscreen-ere.idc:system/usr/idc/cypress120-i2c-touchscreen-ere.idc \
    device/huawei/s7/prebuilt/system/usr/keychars/s7_keypad.kcm.bin:system/usr/keychars/s7_keypad.kcm.bin \
    device/huawei/s7/prebuilt/system/usr/keylayout/s7_handset.kl:system/usr/keylayout/s7_handset.kl \
    device/huawei/s7/prebuilt/system/usr/keylayout/s7_keypad.kl:system/usr/keylayout/s7_keypad.kl \
    device/huawei/s7/prebuilt/system/usr/keylayout/s7_handset.kl:system/usr/keylayout/t1320.kl \
    device/huawei/s7/prebuilt/system/usr/keylayout/s7_handset.kl:system/usr/keylayout/msm_touchscreen.kl \
    device/huawei/s7/prebuilt/system/usr/keylayout/cypress120-i2c-touchscreen-ere.kl:system/usr/keylayout/cypress120-i2c-touchscreen-ere.kl \
    device/huawei/s7/prebuilt/system/usr/keylayout/s7_handset.kl:system/usr/keylayout/cypress120-i2c-touchscreen-ere.kl.old

# Sensors
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/bin/akmd2:system/bin/akmd2

# Camera
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/lib/libmmipl.so:system/lib/libmmipl.so \
    device/huawei/s7/prebuilt/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/huawei/s7/prebuilt/system/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/huawei/s7/prebuilt/system/lib/libcamera-s7.so:system/lib/libcamera.so \
    device/huawei/s7/prebuilt/system/lib/libmmipl.so:obj/lib/libmmipl2.so \
    device/huawei/s7/prebuilt/system/lib/libmmjpeg.so:obj/lib/libmmjpeg2.so \
    device/huawei/s7/prebuilt/system/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    device/huawei/s7/prebuilt/system/lib/libcamera-s7.so:obj/lib/libcamera.so

#OMX
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/lib/libOmxCore.so:system/lib/libOmxCore.so \
    device/huawei/s7/prebuilt/system/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
    device/huawei/s7/prebuilt/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/etc/init.bt.sh:system/etc/init.bt.sh \
    device/huawei/s7/prebuilt/system/etc/init.brcm.bt.sh:system/etc/init.brcm.bt.sh \
    device/huawei/s7/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/s7/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/s7/prebuilt/system/etc/bluetooth/BCM4329B1_002.002.023.0313.0390.hcd:system/etc/bluetooth/BCM4329B1_002.002.023.0313.0390.hcd \
    device/huawei/s7/prebuilt/system/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
    device/huawei/s7/prebuilt/system/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/huawei/s7/prebuilt/system/bin/hciattach:system/bin/hciattach

# Wifi
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/etc/nv.bin:system/etc/nv.bin \
    device/huawei/s7/prebuilt/system//lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/s7/prebuilt/system//lib/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/huawei/s7/prebuilt/system//etc/wifi/rtecdc-bcm4329.bin:system/etc/wifi/rtecdc-bcm4329.bin \
    device/huawei/s7/prebuilt/system//etc/wifi/nvram_mfgtest-bcm4329.txt:system/etc/wifi/nvram_mfgtest-bcm4329.txt \
    device/huawei/s7/prebuilt/system//etc/wifi/nvram-bcm4329.txt:system/etc/wifi/nvram-bcm4329.txt \
    device/huawei/s7/prebuilt/system//etc/wifi/rtecdc-apsta-bcm4329.bin:system/etc/wifi/rtecdc-apsta-bcm4329.bin \
   device/huawei/s7/prebuilt/system//etc/wifi/rtecdc-mfgtest-bcm4329.bin:system/etc/wifi/rtecdc-mfgtest-bcm4329.bin \
    device/huawei/s7/prebuilt/system//etc/wifi/rtecdc-bcm4319.bin:system/etc/wifi/rtecdc-bcm4319.bin \
    device/huawei/s7/prebuilt/system//etc/wifi/nvram_mfgtest-bcm4319.txt:system/etc/wifi/nvram_mfgtest-bcm4319.txt \
    device/huawei/s7/prebuilt/system//etc/wifi/nvram-bcm4319.txt:system/etc/wifi/nvram-bcm4319.txt \
    device/huawei/s7/prebuilt/system//etc/wifi/rtecdc-apsta-bcm4319.bin:system/etc/wifi/rtecdc-apsta-bcm4319.bin \
    device/huawei/s7/prebuilt/system//etc/wifi/rtecdc-mfgtest-bcm4319.bin:system/etc/wifi/rtecdc-mfgtest-bcm4319.bin \
    device/huawei/s7/prebuilt/system//etc/wifi/wpa_supplicant.conf:system//etc/wifi/wpa_supplicant.conf

# GPS
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/lib/libcommondefs.so:system/lib/libcommondefs.so \
    device/huawei/s7/prebuilt/system/lib/libloc-rpc.so:system/lib/libloc-rpc.so \
    device/huawei/s7/prebuilt/system/lib/libloc.so:system/lib/libloc.so \
    device/huawei/s7/prebuilt/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    device/huawei/s7/prebuilt/system/lib/libloc_ext.so:system/lib/libloc_ext.so \
    device/huawei/s7/prebuilt/system/lib/libloc_api.so:system/lib/libloc_api.so \
    device/huawei/s7/prebuilt/system/lib/libgps.so:system/lib/libgps.so

PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/lib/libcommondefs.so:obj/lib/libcommondefs.so \
    device/huawei/s7/prebuilt/system/lib/libloc-rpc.so:obj/lib/libloc-rpc.so \
    device/huawei/s7/prebuilt/system/lib/libloc.so:obj/lib/libloc.so \
    device/huawei/s7/prebuilt/system/etc/loc_parameter.ini:obj/etc/loc_parameter.ini \
    device/huawei/s7/prebuilt/system/lib/libloc_ext.so:obj/lib/libloc_ext.so \
    device/huawei/s7/prebuilt/system/lib/libloc_api.so:obj/lib/libloc_api.so \
    device/huawei/s7/prebuilt/system/lib/libgps.so:obj/lib/libgps.so

# RIL
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/bin/qmuxd:system/bin/qmuxd \
    device/huawei/s7/prebuilt/system/lib/libauth.so:system/lib/libauth.so \
    device/huawei/s7/prebuilt/system/lib/libcm.so:system/lib/libcm.so \
    device/huawei/s7/prebuilt/system/lib/libdiag.so:system/lib/libdiag.so \
    device/huawei/s7/prebuilt/system/lib/libdll.so:system/lib/libdll.so \
    device/huawei/s7/prebuilt/system/lib/libdsm.so:system/lib/libdsm.so \
    device/huawei/s7/prebuilt/system/lib/libdss.so:system/lib/libdss.so \
    device/huawei/s7/prebuilt/system/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    device/huawei/s7/prebuilt/system/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    device/huawei/s7/prebuilt/system/lib/libwms.so:system/lib/libwms.so \
    device/huawei/s7/prebuilt/system/lib/libwmsts.so:system/lib/libwmsts.so \
    device/huawei/s7/prebuilt/system/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/huawei/s7/prebuilt/system/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/huawei/s7/prebuilt/system/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/huawei/s7/prebuilt/system/lib/libnv.so:system/lib/libnv.so \
    device/huawei/s7/prebuilt/system/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/huawei/s7/prebuilt/system/lib/libpbmlib.so:system/lib/libpbmlib.so \
    device/huawei/s7/prebuilt/system/lib/libqmi.so:system/lib/libqmi.so \
    device/huawei/s7/prebuilt/system/lib/libqueue.so:system/lib/libqueue.so

# Audio,media
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/s7/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/s7/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/s7/prebuilt/system/etc/DualMicControl.txt:system/etc/DualMicControl.txt

# NTFS,misc
PRODUCT_COPY_FILES += \
    device/huawei/s7/vold.fstab:system/etc/vold.fstab \
    device/huawei/s7/prebuilt/system/bin/ntfs-3g:system/bin/ntfs-3g \
    device/huawei/s7/prebuilt/system/etc/start_usb0.sh:system/etc/start_usb0.sh

# APP
PRODUCT_COPY_FILES += \
    device/huawei/s7/prebuilt/system/app/Apexlauncher.apk:system/app/Apexlauncher.apk \
    device/huawei/s7/prebuilt/system/app/RootExplorer.apk:system/app/RootExplorer.apk

DISABLE_DEXPREOPT := false

PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=120 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.max.fling_velocity=4000 \
    ro.kernel.android.checkjni=0
