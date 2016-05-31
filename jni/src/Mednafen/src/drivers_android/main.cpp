#include "main.h"

#include <algorithm>
#include <bitset>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#define LOG_TAG  "mednafen"

#include <android/log.h>

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

int main(int argc, char *argv[])
{
    std::vector<MDFNGI *> ExternalSystems;
    MDFND_Message("start...................");

    if(SDL_Init(SDL_INIT_VIDEO)) {
        return -1;
    }

    SDL_JoystickEventState(SDL_IGNORE);

    if(!MDFNI_InitializeModules(ExternalSystems)) {
        return -1;
    }

    SDL_LogError(SDL_LOG_CATEGORY_APPLICATION, "No OpenGL ES support on this system\n");
    MDFND_Message("end......................");
    return 1;
}

/* vi: set ts=4 sw=4 expandtab: */
