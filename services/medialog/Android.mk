LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := MediaLogService.cpp

LOCAL_SHARED_LIBRARIES := libmedia libbinder libutils liblog libnbaio

LOCAL_MODULE:= libmedialogservice

ifneq ($(BOARD_USE_64BITMEDIA),true)
LOCAL_32_BIT_ONLY := true
endif

LOCAL_C_INCLUDES := $(call include-path-for, audio-utils)

include $(BUILD_SHARED_LIBRARY)
