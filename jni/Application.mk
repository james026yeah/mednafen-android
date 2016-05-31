
# Uncomment this if you're using STL in your project
# See CPLUSPLUS-SUPPORT.html in the NDK documentation for more information
#APP_STL := stlport_static 
#APP_PLATFORM := android-12
#APP_STL := stlport_static
#APP_STL := gnustl_static
#APP_STL := c++_static
APP_STL := c++_shared
STLPORT_FORCE_REBUILD := true
APP_CPPFLAGS += -fexceptions
APP_CPPFLAGS += -frtti

APP_ABI := armeabi
#APP_ABI := armeabi armeabi-v7a mips x86
