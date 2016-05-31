#ifndef _DRIVERS_MAIN_H
#define _DRIVERS_MAIN_H

#include <mednafen/driver.h>
#include <mednafen/mednafen.h>
#include <mednafen/settings.h>
#include <mednafen/git.h>

#include <SDL.h>
#include <SDL_thread.h>

#define CEVT_TOGGLEGUI	1
#define CEVT_TOGGLEFS	2
#define CEVT_VIDEOSYNC	5
#define CEVT_SHOWCURSOR		0x0c
#define CEVT_CHEATTOGGLEVIEW	0x10


#define CEVT_DISP_MESSAGE	0x11

#define CEVT_SET_GRAB_INPUT	0x20

#define CEVT_SET_STATE_STATUS	0x40
#define CEVT_SET_MOVIE_STATUS	0x41

#define CEVT_WANT_EXIT		0x80 // Emulator exit or GUI exit or bust!


#define CEVT_NP_DISPLAY_TEXT	0x101
#define CEVT_NP_TOGGLE_TT	0x103
#define CEVT_NP_LINE            0x180
#define CEVT_NP_LINE_RESPONSE   0x181

#define CEVT_SET_INPUT_FOCUS	0x1000	// Main thread to game thread.

#endif
