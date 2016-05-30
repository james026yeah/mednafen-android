
# Uncomment this if you're using STL in your project
# See CPLUSPLUS-SUPPORT.html in the NDK documentation for more information
#APP_STL := stlport_static 
#APP_PLATFORM := android-12
APP_STL := gnustl_static
STLPORT_FORCE_REBUILD := true


APP_ABI := armeabi

#NDK_TOOLCHAIN_VERSION=4.9
APP_CPPFLAGS := -frtti -std=c++11
#APP_ABI := armeabi armeabi-v7a mips x86
