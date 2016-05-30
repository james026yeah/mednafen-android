LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL
MEDNAFEN_SRC_PATH := $(LOCAL_PATH)/Mednafen/src

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/Mednafen/include
LOCAL_CPP_INCLUDES := $(LOCAL_PATH)/Mednafen/include


# Add your application source files here...
LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.c \
	 $(MEDNAFEN_SRC_PATH)/drivers_android/main.c
#	 testgles.c \


#LOCAL_SRC_FILES += Mednafen/src/drivers_android/main.cpp

LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_STATIC_LIBRARIES := gnustl_static

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
