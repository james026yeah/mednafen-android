#include "main.h"

#include <algorithm>
#include <bitset>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <math.h>

#include "input.h"
#include "Joystick.h"

#define LOG_TAG  "mednafen"

#include <android/log.h>

JoystickManager *joy_manager = NULL;
static uint32 volatile MainThreadID = 0;
static char *DrBaseDirectory;
MDFNGI *CurGame=NULL;


static int volatile NeedExitNow = 0;

static std::vector <MDFNSetting> NeoDriverSettings;
static MDFNSetting DriverSettings[] = 
{
      { "osd.alpha_blend", MDFNSF_NOFLAGS, "Enable alpha blending for OSD elements.", NULL, MDFNST_BOOL, "1" },
};

void MDFND_PrintError(const char *s)
{
    __android_log_write(ANDROID_LOG_ERROR, LOG_TAG, s);
/**
 if(RemoteOn)
  Remote_SendErrorMessage(s);
 else 
 {
  if(StdoutMutex)
   MDFND_LockMutex(StdoutMutex);
 
  puts(s);
  fflush(stdout);

#if 0
  #ifdef WIN32
  MessageBox(0, s, "Mednafen Error", MB_ICONERROR | MB_OK | MB_SETFOREGROUND | MB_TOPMOST);
  #endif
#endif

  if(StdoutMutex)
   MDFND_UnlockMutex(StdoutMutex);
 }
*/
}

void MDFND_Message(const char *s)     
{
    __android_log_write(ANDROID_LOG_INFO, LOG_TAG, s);
/*
 if(RemoteOn)     
  Remote_SendStatusMessage(s);     
 else      
 {     
  if(StdoutMutex)                                           
   MDFND_LockMutex(StdoutMutex);     
                 
  fputs(s,stdout);     
  fflush(stdout);     
     
  if(StdoutMutex)          
   MDFND_UnlockMutex(StdoutMutex);     
 }                                     
*/
}  

/*
void MDFN_printf(const char *format, ...) noexcept
{
     va_list ap; 
     va_start(ap, format);
     __android_log_print(ANDROID_LOG_INFO, LOG_TAG,  format, ap);
     va_end(ap);

}
*/


void SendCEvent(unsigned int code, void *data1, void *data2)
{
    SDL_Event evt;
    evt.user.type = SDL_USEREVENT;
    evt.user.code = code;
    evt.user.data1 = data1;
    evt.user.data2 = data2;
    SDL_PushEvent(&evt);
}

void MDFND_DispMessage(char* text)
{
    SendCEvent(CEVT_DISP_MESSAGE, text, NULL);
}

void MDFND_SetStateStatus(StateStatusStruct *status) noexcept
{
    SendCEvent(CEVT_SET_STATE_STATUS, status, NULL);
}

void MDFND_SetMovieStatus(StateStatusStruct *status) noexcept
{
    SendCEvent(CEVT_SET_MOVIE_STATUS, status, NULL);
}

uint32 MDFND_GetTime(void)
{
    return(SDL_GetTicks());
}

void MDFND_Sleep(uint32 ms)
{
    SDL_Delay(ms);
}

static int LoadGame(const char *force_module, const char *path) {
    CurGame = MDFNI_LoadGame(force_module, path);
    return 1;
}

int CloseGame(void) {
    return 1;
}

int main(int argc, char *argv[])
{
    std::vector<MDFNGI *> ExternalSystems;
    MDFND_Message("start...................");

    DrBaseDirectory = "/data/data";

    if(SDL_Init(SDL_INIT_VIDEO)) {
        return -1;
    }

    SDL_JoystickEventState(SDL_IGNORE);

    MainThreadID = MDFND_ThreadID();

    if(!MDFNI_InitializeModules(ExternalSystems)) {
        MDFND_PrintError("MDFNI_InitializeModules failed");
        return -1;
    }
    MDFND_Message("MDFNI_InitializeModules success");

/*
    for(unsigned int x = 0; x < sizeof(DriverSettings) / sizeof(MDFNSetting); x++)
        NeoDriverSettings.push_back(DriverSettings[x]);

    if(!MDFNI_Initialize(DrBaseDirectory, NeoDriverSettings))
        return(-1);

    //joy_manager = new JoystickManager();
    //joy_manager->SetAnalogThreshold(MDFN_GetSettingF("analogthreshold") / 100);

    if(LoadGame("nes", "hello.nes")) {
    } else {
        NeedExitNow = 1;
    }
*/

    while (!NeedExitNow) {
    //loop enjoy game
        MDFND_Message("run game loop");
        sleep(10);
    }

    CloseGame();

    //delete joy_manager;
    //joy_manager = NULL;

    SDL_Quit();

    MDFND_Message("end......................");
    return 1;
}

/* vi: set ts=4 sw=4 expandtab: */
