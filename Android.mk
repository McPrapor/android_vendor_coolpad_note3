LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),$(filter $(TARGET_DEVICE),note3 note3lite))

include $(CLEAR_VARS)
LOCAL_MODULE := lib_fpc_tac_shared
LOCAL_SRC_FILES_64 := vendor/lib64/lib_fpc_tac_shared.so
LOCAL_SRC_FILES_32 := vendor/lib/lib_fpc_tac_shared.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES_32 := vendor/lib/libdpframework.so
LOCAL_SRC_FILES_64 := vendor/lib64/libdpframework.so
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libnvram
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES_32 := vendor/lib/libnvram.so
LOCAL_SRC_FILES_64 := vendor/lib64/libnvram.so
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

endif
