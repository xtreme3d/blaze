
var Init: function(): Double; cdecl;
function LInit(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Init());
  Result:=1;
end;
var Free: function(): Double; cdecl;
function LFree(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Free());
  Result:=1;
end;
var AddSound: function(S1: PChar; R2: Double; R3: Double): Double; cdecl;
function LAddSound(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddSound(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var AddManager: function(): Double; cdecl;
function LAddManager(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddManager());
  Result:=1;
end;
var Play: function(R1: Double; R2: Double): Double; cdecl;
function LPlay(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Play(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PlayEx: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LPlayEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PlayEx(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var Sample_SetVolume: function(R1: Double; R2: Double): Double; cdecl;
function LSample_SetVolume(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Sample_SetVolume(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var Sample_SetFrequency: function(R1: Double; R2: Double): Double; cdecl;
function LSample_SetFrequency(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Sample_SetFrequency(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var Sample_SetProperties: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSample_SetProperties(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Sample_SetProperties(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var Sample_GetIsPlaying: function(R1: Double): Double; cdecl;
function LSample_GetIsPlaying(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Sample_GetIsPlaying(lua_tonumber(L,1)));
  Result:=1;
end;
var Sample_GetFileFrequency: function(R1: Double): Double; cdecl;
function LSample_GetFileFrequency(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Sample_GetFileFrequency(lua_tonumber(L,1)));
  Result:=1;
end;
var Sample_Stop: function(R1: Double): Double; cdecl;
function LSample_Stop(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Sample_Stop(lua_tonumber(L,1)));
  Result:=1;
end;
var Sample_Unload: function(R1: Double): Double; cdecl;
function LSample_Unload(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Sample_Unload(lua_tonumber(L,1)));
  Result:=1;
end;
var Manager_Free: function(R1: Double): Double; cdecl;
function LManager_Free(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_Free(lua_tonumber(L,1)));
  Result:=1;
end;
var Manager_SetSample: function(R1: Double; R2: Double): Double; cdecl;
function LManager_SetSample(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_SetSample(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var Manager_GetSample: function(R1: Double): Double; cdecl;
function LManager_GetSample(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_GetSample(lua_tonumber(L,1)));
  Result:=1;
end;
var Manager_SetPosition: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LManager_SetPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_SetPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var Manager_SetVolume: function(R1: Double; R2: Double): Double; cdecl;
function LManager_SetVolume(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_SetVolume(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var Manager_SetFrequency: function(R1: Double; R2: Double): Double; cdecl;
function LManager_SetFrequency(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_SetFrequency(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var Manager_SetProperties: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LManager_SetProperties(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_SetProperties(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var Manager_GetIsPlaying: function(R1: Double): Double; cdecl;
function LManager_GetIsPlaying(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_GetIsPlaying(lua_tonumber(L,1)));
  Result:=1;
end;
var Manager_GetChannelsCount: function(R1: Double): Double; cdecl;
function LManager_GetChannelsCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_GetChannelsCount(lua_tonumber(L,1)));
  Result:=1;
end;
var Manager_Stop: function(R1: Double): Double; cdecl;
function LManager_Stop(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Manager_Stop(lua_tonumber(L,1)));
  Result:=1;
end;
var SoundSystem_SetListinerPosition: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSoundSystem_SetListinerPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_SetListinerPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SoundSystem_GetCount: function(): Double; cdecl;
function LSoundSystem_GetCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_GetCount());
  Result:=1;
end;
var SoundSystem_FindByFileName: function(S1: PChar): Double; cdecl;
function LSoundSystem_FindByFileName(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_FindByFileName(lua_tostring(L,1)));
  Result:=1;
end;
var SoundSystem_Pause: function(): Double; cdecl;
function LSoundSystem_Pause(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_Pause());
  Result:=1;
end;
var SoundSystem_PauseGroup: function(R1: Double; R2: Double): Double; cdecl;
function LSoundSystem_PauseGroup(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_PauseGroup(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SoundSystem_Update: function(): Double; cdecl;
function LSoundSystem_Update(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_Update());
  Result:=1;
end;
var SoundSystem_Stop: function(): Double; cdecl;
function LSoundSystem_Stop(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_Stop());
  Result:=1;
end;
var SoundSystem_StopGroup: function(R1: Double): Double; cdecl;
function LSoundSystem_StopGroup(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_StopGroup(lua_tonumber(L,1)));
  Result:=1;
end;
var SoundSystem_UnloadGroup: function(R1: Double): Double; cdecl;
function LSoundSystem_UnloadGroup(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SoundSystem_UnloadGroup(lua_tonumber(L,1)));
  Result:=1;
end;

function LInit_gmsquall(L: Plua_State): Integer; cdecl;
var dll: THandle;
begin

  dll:=GetModuleHandle(lua_tostring(L,1));
  if dll = 0 then dll:=LoadLibrary(lua_tostring(L,1));

  @Init:=getProcAddress(dll,'Init');
  @Free:=getProcAddress(dll,'Free');
  @AddSound:=getProcAddress(dll,'AddSound');
  @AddManager:=getProcAddress(dll,'AddManager');
  @Play:=getProcAddress(dll,'Play');
  @PlayEx:=getProcAddress(dll,'PlayEx');
  @Sample_SetVolume:=getProcAddress(dll,'Sample_SetVolume');
  @Sample_SetFrequency:=getProcAddress(dll,'Sample_SetFrequency');
  @Sample_SetProperties:=getProcAddress(dll,'Sample_SetProperties');
  @Sample_GetIsPlaying:=getProcAddress(dll,'Sample_GetIsPlaying');
  @Sample_GetFileFrequency:=getProcAddress(dll,'Sample_GetFileFrequency');
  @Sample_Stop:=getProcAddress(dll,'Sample_Stop');
  @Sample_Unload:=getProcAddress(dll,'Sample_Unload');
  @Manager_Free:=getProcAddress(dll,'Manager_Free');
  @Manager_SetSample:=getProcAddress(dll,'Manager_SetSample');
  @Manager_GetSample:=getProcAddress(dll,'Manager_GetSample');
  @Manager_SetPosition:=getProcAddress(dll,'Manager_SetPosition');
  @Manager_SetVolume:=getProcAddress(dll,'Manager_SetVolume');
  @Manager_SetFrequency:=getProcAddress(dll,'Manager_SetFrequency');
  @Manager_SetProperties:=getProcAddress(dll,'Manager_SetProperties');
  @Manager_GetIsPlaying:=getProcAddress(dll,'Manager_GetIsPlaying');
  @Manager_GetChannelsCount:=getProcAddress(dll,'Manager_GetChannelsCount');
  @Manager_Stop:=getProcAddress(dll,'Manager_Stop');
  @SoundSystem_SetListinerPosition:=getProcAddress(dll,'SoundSystem_SetListinerPosition');
  @SoundSystem_GetCount:=getProcAddress(dll,'SoundSystem_GetCount');
  @SoundSystem_FindByFileName:=getProcAddress(dll,'SoundSystem_FindByFileName');
  @SoundSystem_Pause:=getProcAddress(dll,'SoundSystem_Pause');
  @SoundSystem_PauseGroup:=getProcAddress(dll,'SoundSystem_PauseGroup');
  @SoundSystem_Update:=getProcAddress(dll,'SoundSystem_Update');
  @SoundSystem_Stop:=getProcAddress(dll,'SoundSystem_Stop');
  @SoundSystem_StopGroup:=getProcAddress(dll,'SoundSystem_StopGroup');
  @SoundSystem_UnloadGroup:=getProcAddress(dll,'SoundSystem_UnloadGroup');

  lua_register(L,'Init',@LInit);
  lua_register(L,'Free',@LFree);
  lua_register(L,'AddSound',@LAddSound);
  lua_register(L,'AddManager',@LAddManager);
  lua_register(L,'Play',@LPlay);
  lua_register(L,'PlayEx',@LPlayEx);
  lua_register(L,'Sample_SetVolume',@LSample_SetVolume);
  lua_register(L,'Sample_SetFrequency',@LSample_SetFrequency);
  lua_register(L,'Sample_SetProperties',@LSample_SetProperties);
  lua_register(L,'Sample_GetIsPlaying',@LSample_GetIsPlaying);
  lua_register(L,'Sample_GetFileFrequency',@LSample_GetFileFrequency);
  lua_register(L,'Sample_Stop',@LSample_Stop);
  lua_register(L,'Sample_Unload',@LSample_Unload);
  lua_register(L,'Manager_Free',@LManager_Free);
  lua_register(L,'Manager_SetSample',@LManager_SetSample);
  lua_register(L,'Manager_GetSample',@LManager_GetSample);
  lua_register(L,'Manager_SetPosition',@LManager_SetPosition);
  lua_register(L,'Manager_SetVolume',@LManager_SetVolume);
  lua_register(L,'Manager_SetFrequency',@LManager_SetFrequency);
  lua_register(L,'Manager_SetProperties',@LManager_SetProperties);
  lua_register(L,'Manager_GetIsPlaying',@LManager_GetIsPlaying);
  lua_register(L,'Manager_GetChannelsCount',@LManager_GetChannelsCount);
  lua_register(L,'Manager_Stop',@LManager_Stop);
  lua_register(L,'SoundSystem_SetListinerPosition',@LSoundSystem_SetListinerPosition);
  lua_register(L,'SoundSystem_GetCount',@LSoundSystem_GetCount);
  lua_register(L,'SoundSystem_FindByFileName',@LSoundSystem_FindByFileName);
  lua_register(L,'SoundSystem_Pause',@LSoundSystem_Pause);
  lua_register(L,'SoundSystem_PauseGroup',@LSoundSystem_PauseGroup);
  lua_register(L,'SoundSystem_Update',@LSoundSystem_Update);
  lua_register(L,'SoundSystem_Stop',@LSoundSystem_Stop);
  lua_register(L,'SoundSystem_StopGroup',@LSoundSystem_StopGroup);
  lua_register(L,'SoundSystem_UnloadGroup',@LSoundSystem_UnloadGroup);

  lua_pushnumber(L,dll);
  Result:=1;
end;
