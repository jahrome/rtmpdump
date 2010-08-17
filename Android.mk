LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	rtmpdump.c

LOCAL_SHARED_LIBRARIES := librtmp

LOCAL_MODULE:= rtmpdump

LOCAL_C_INCLUDES := 			\
	$(LIBORC_TOP)			\
	$(LOCAL_PATH)

LOCAL_CFLAGS := \
	-DNO_CRYPTO	\
	-DRTMPDUMP_VERSION=svn

include $(BUILD_EXECUTABLE)
