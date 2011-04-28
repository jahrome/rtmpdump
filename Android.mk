LOCAL_PATH:= $(call my-dir)

LIBRTMP_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS:=eng debug

LOCAL_SRC_FILES:= \
	rtmpdump.c

LOCAL_SHARED_LIBRARIES := librtmp

LOCAL_MODULE:= rtmpdump

LOCAL_C_INCLUDES := 			\
	$(LIBRTMP_TOP)			\
	$(LOCAL_PATH)

LOCAL_CFLAGS := \
	-DNO_CRYPTO	\
	-DRTMPDUMP_VERSION=\"svn\"

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

include $(LIBRTMP_TOP)/librtmp/Android.mk
