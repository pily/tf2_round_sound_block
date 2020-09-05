#include <sourcemod>

public OnPluginStart()
{
    HookEvent("teamplay_broadcast_audio", Event_Audio, EventHookMode_Pre);
}

public Action:Event_Audio(Handle:event, const String:name[], bool:dontBroadcast)
{
    new String:strAudio[40];
    GetEventString(event, "sound", strAudio, sizeof(strAudio));
    
    if(strncmp(strAudio, "Game.Your", 9) == 0)
    {
        // Block sound from being played
        return Plugin_Handled;
    }else if(strcmp(strAudio, "Game.Stalemate") == 0)
    {
        // Block sound from being played
        return Plugin_Handled;
    }
    
    return Plugin_Continue;
}