LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	amf.c		\
	hashswf.c	\
	log.c		\
	parseurl.c	\
	rtmp.c

LOCAL_SHARED_LIBRARIES := 

LOCAL_MODULE:= librtmp

LOCAL_C_INCLUDES := 			\
	$(LIBRTMP_TOP)			\
	$(LOCAL_PATH)

LOCAL_CFLAGS := \
	-DNO_CRYPTO

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
