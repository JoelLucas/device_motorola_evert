#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from motorola sdm660-common
-include device/motorola/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/evert

# Assertions
TARGET_OTA_ASSERT_DEVICE := evert

# Display
TARGET_SCREEN_DENSITY := 420

# FM
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := "cherokee"

# Kernel
TARGET_KERNEL_CONFIG := lineageos_evert_defconfig

# NFC
BOARD_NFC_CHIPSET := pn553

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2885681152
BOARD_VENDORIMAGE_PARTITION_SIZE := 956301312

# Power
TARGET_HAS_NO_WLAN_STATS := true


# RIL
ENABLE_VENDOR_RIL_SERVICE := true

BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor


# inherit from the proprietary version
-include vendor/motorola/evert/BoardConfigVendor.mk
