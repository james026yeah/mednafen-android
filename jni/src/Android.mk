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
	 $(MEDNAFEN_SRC_PATH)/drivers_android/main.cpp \
	 $(MEDNAFEN_SRC_PATH)/drivers_android/thread_sdl.cpp \
	 $(MEDNAFEN_SRC_PATH)/drivers_android/Joystick.cpp \
	 $(MEDNAFEN_SRC_PATH)/drivers_android/Joystick_SDL.cpp \
	 $(MEDNAFEN_SRC_PATH)/debug.cpp \
	 $(MEDNAFEN_SRC_PATH)/dis6502.cpp \
	 $(MEDNAFEN_SRC_PATH)/endian.cpp \
	 $(MEDNAFEN_SRC_PATH)/error.cpp \
	 $(MEDNAFEN_SRC_PATH)/file.cpp \
	 $(MEDNAFEN_SRC_PATH)/FileStream.cpp \
	 $(MEDNAFEN_SRC_PATH)/general.cpp \
	 $(MEDNAFEN_SRC_PATH)/git.cpp \
	 $(MEDNAFEN_SRC_PATH)/IPSPatcher.cpp \
	 $(MEDNAFEN_SRC_PATH)/mednafen.cpp \
	 $(MEDNAFEN_SRC_PATH)/memory.cpp \
	 $(MEDNAFEN_SRC_PATH)/MemoryStream.cpp \
	 $(MEDNAFEN_SRC_PATH)/mempatcher.cpp \
	 $(MEDNAFEN_SRC_PATH)/movie.cpp \
	 $(MEDNAFEN_SRC_PATH)/netplay.cpp \
	 $(MEDNAFEN_SRC_PATH)/player.cpp \
	 $(MEDNAFEN_SRC_PATH)/PSFLoader.cpp \
	 $(MEDNAFEN_SRC_PATH)/qtrecord.cpp \
	 $(MEDNAFEN_SRC_PATH)/settings.cpp \
	 $(MEDNAFEN_SRC_PATH)/SNSFLoader.cpp \
	 $(MEDNAFEN_SRC_PATH)/SPCReader.cpp \
	 $(MEDNAFEN_SRC_PATH)/state.cpp \
	 $(MEDNAFEN_SRC_PATH)/state_rewind.cpp \
	 $(MEDNAFEN_SRC_PATH)/Stream.cpp \
	 $(MEDNAFEN_SRC_PATH)/tests.cpp \
	 $(MEDNAFEN_SRC_PATH)/trio/trio.c \
	 $(MEDNAFEN_SRC_PATH)/trio/trionan.c \
	 $(MEDNAFEN_SRC_PATH)/trio/triostr.c \
	 $(MEDNAFEN_SRC_PATH)/compress/ioapi.c \
	 $(MEDNAFEN_SRC_PATH)/compress/minilzo.c \
	 $(MEDNAFEN_SRC_PATH)/compress/unzip.c \
	 $(MEDNAFEN_SRC_PATH)/compress/GZFileStream.cpp \
	 $(MEDNAFEN_SRC_PATH)/compress/ZLInflateFilter.cpp \
	 $(MEDNAFEN_SRC_PATH)/hash/md5.cpp \
	 $(MEDNAFEN_SRC_PATH)/hash/sha1.cpp \
	 $(MEDNAFEN_SRC_PATH)/hash/sha256.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/font-data-12x13.c \
	 $(MEDNAFEN_SRC_PATH)/video/font-data-18x18.c \
	 $(MEDNAFEN_SRC_PATH)/video/Deinterlacer.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/font-data.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/png.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/primitives.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/resize.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/surface.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/tblur.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/text.cpp \
	 $(MEDNAFEN_SRC_PATH)/video/video.cpp \
	 $(MEDNAFEN_SRC_PATH)/sound/Blip_Buffer.cpp \
	 $(MEDNAFEN_SRC_PATH)/sound/Fir_Resampler.cpp \
	 $(MEDNAFEN_SRC_PATH)/sound/okiadpcm.cpp \
	 $(MEDNAFEN_SRC_PATH)/sound/OwlResampler.cpp \
	 $(MEDNAFEN_SRC_PATH)/sound/Stereo_Buffer.cpp \
	 $(MEDNAFEN_SRC_PATH)/sound/WAVRecord.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/CDAccess_CCD.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/CDAccess_Image.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/CDAFReader_MPC.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/CDAFReader_Vorbis.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/CDUtility.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/galois.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/lec.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/scsicd.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/CDAccess.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/CDAFReader.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/cdromif.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/crc32.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/l-ec.cpp \
	 $(MEDNAFEN_SRC_PATH)/cdrom/recover-raw.cpp \
	 $(MEDNAFEN_SRC_PATH)/string/ConvertUTF.cpp \
	 $(MEDNAFEN_SRC_PATH)/string/escape.cpp \
	 $(MEDNAFEN_SRC_PATH)/string/trim.cpp \
 	 $(MEDNAFEN_SRC_PATH)/resampler/resample.c \
	 $(MEDNAFEN_SRC_PATH)/quicklz/quicklz.c \
 	 $(MEDNAFEN_SRC_PATH)/cputest/arm_cpu.c \
	 $(MEDNAFEN_SRC_PATH)/cputest/cputest.c \
	 $(MEDNAFEN_SRC_PATH)/cputest/ppc_cpu.c \
 	 $(MEDNAFEN_SRC_PATH)/mpcdec/crc32.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/mpc_bits_reader.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/mpc_demux.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/requant.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/synth_filter.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/huffman.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/mpc_decoder.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/mpc_reader.c \
	 $(MEDNAFEN_SRC_PATH)/mpcdec/streaminfo.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/bitwise.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/block.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/codebook.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/floor0.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/floor1.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/framing.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/info.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/mapping0.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/mdct.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/registry.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/res012.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/sharedbook.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/synthesis.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/vorbisfile.c \
	 $(MEDNAFEN_SRC_PATH)/tremor/window.c \
	 $(MEDNAFEN_SRC_PATH)/nes/cart.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/fds.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/fds-sound.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/filter.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/ines.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/nes.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/nsf.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/nsfe.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/sound.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/unif.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/vsuni.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/x6502.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/107.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/112.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/113.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/114.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/117.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/140.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/151.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/152.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/156.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/15.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/163.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/16.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/180.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/182.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/184.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/185.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/187.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/189.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/18.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/193.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/208.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/21.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/222.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/228.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/22.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/232.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/234.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/23.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/240.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/241.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/242.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/244.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/246.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/248.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/25.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/32.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/33.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/34.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/38.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/41.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/42.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/46.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/51.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/65.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/67.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/68.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/70.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/72.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/73.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/75.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/76.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/77.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/78.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/80.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/8237.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/82.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/86.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/87.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/88.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/89.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/8.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/90.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/92.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/93.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/94.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/95.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/96.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/97.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/99.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/codemasters.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/colordreams.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/deirom.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/emu2413.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/ffe.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/fme7.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/h2288.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/malee.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/maxicart.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/mmc1.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/mmc2and4.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/mmc3.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/mmc5.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/n106.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/nina06.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/novel.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/sachen.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/simple.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/super24.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/supervision.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/tengen.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/vrc6.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/boards/vrc7.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/arkanoid.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/bworld.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/cursor.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/fkb.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/ftrainer.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/hypershot.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/mahjong.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/oekakids.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/partytap.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/powerpad.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/shadow.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/suborkb.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/toprider.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/input/zapper.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/ntsc/nes_ntsc.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/ppu/palette.cpp \
	 $(MEDNAFEN_SRC_PATH)/nes/ppu/ppu.cpp



	 #$(MEDNAFEN_SRC_PATH)/tremor/iseeking_example.c \
	 #$(MEDNAFEN_SRC_PATH)/tremor/ivorbisfile_example.c \
	 #$(MEDNAFEN_SRC_PATH)/sound/okiadpcm_generate.cpp \
#	 testgles.c \


#LOCAL_SRC_FILES += Mednafen/src/drivers_android/main.cpp

LOCAL_SHARED_LIBRARIES := SDL2

#LOCAL_STATIC_LIBRARIES := stlport_static
#LOCAL_STATIC_LIBRARIES := gnustl_static
#LOCAL_STATIC_LIBRARIES := c++_static
LOCAL_STATIC_LIBRARIES := c++_shared
#LOCAL_SHARED_LIBRARIES := zlib
L_CFLAGS := -DHAVE_CONFIG_H
L_CPPFLAGS := -DHAVE_CONFIG_H
LOCAL_CPP_FEATURES := -fexceptions
APP_CPPFLAGS += -fexceptions

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog -lz

include $(BUILD_SHARED_LIBRARY)
