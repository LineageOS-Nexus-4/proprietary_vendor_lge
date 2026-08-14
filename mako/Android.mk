LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := liboemcamera
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES := proprietary/lib/liboemcamera.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

define mako-camera-prebuilt
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES := proprietary/lib/$(1).so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)
endef

$(eval $(call mako-camera-prebuilt,libmmcamera_faceproc))
$(eval $(call mako-camera-prebuilt,libmmcamera_statsproc31))
$(eval $(call mako-camera-prebuilt,libmmcamera_frameproc))
$(eval $(call mako-camera-prebuilt,libmmcamera_hdr_lib))
$(eval $(call mako-camera-prebuilt,libmmcamera_image_stab))
$(eval $(call mako-camera-prebuilt,libmmcamera_wavelet_lib))
