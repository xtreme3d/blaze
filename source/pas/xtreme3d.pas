var EngineCreate: function(): Double; stdcall;
function LEngineCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,EngineCreate());
  Result:=1;
end;
var EngineDestroy: function(): Double; stdcall;
function LEngineDestroy(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,EngineDestroy());
  Result:=1;
end;
var EngineSetObjectsSorting: function(R1: Double): Double; stdcall;
function LEngineSetObjectsSorting(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,EngineSetObjectsSorting(lua_tonumber(L,1)));
  Result:=1;
end;
var EngineSetCulling: function(R1: Double): Double; stdcall;
function LEngineSetCulling(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,EngineSetCulling(lua_tonumber(L,1)));
  Result:=1;
end;
var SetPakArchive: function(S1: PChar): Double; stdcall;
function LSetPakArchive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetPakArchive(lua_tostring(L,1)));
  Result:=1;
end;
var Update: function(R1: Double): Double; stdcall;
function LUpdate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Update(lua_tonumber(L,1)));
  Result:=1;
end;
var TrisRendered: function(): Double; stdcall;
function LTrisRendered(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrisRendered());
  Result:=1;
end;
var ViewerCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LViewerCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ViewerSetCamera: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetCamera(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetCamera(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerEnableVSync: function(R1: Double; R2: Double): Double; stdcall;
function LViewerEnableVSync(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerEnableVSync(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerSetAutoRender: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetAutoRender(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetAutoRender(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerRender: function(R1: Double): Double; stdcall;
function LViewerRender(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerRender(lua_tonumber(L,1)));
  Result:=1;
end;
var ViewerRenderToFile: function(R1: Double; S2: PChar): Double; stdcall;
function LViewerRenderToFile(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerRenderToFile(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ViewerRenderEx: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LViewerRenderEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerRenderEx(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ViewerResize: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LViewerResize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerResize(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ViewerSetVisible: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetVisible(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetVisible(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerGetPixelColor: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LViewerGetPixelColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetPixelColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ViewerGetPixelDepth: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LViewerGetPixelDepth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetPixelDepth(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ViewerSetLighting: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetLighting(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetLighting(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerSetBackgroundColor: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetBackgroundColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetBackgroundColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerSetAmbientColor: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetAmbientColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetAmbientColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerEnableFog: function(R1: Double; R2: Double): Double; stdcall;
function LViewerEnableFog(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerEnableFog(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerSetFogColor: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetFogColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetFogColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerSetFogDistance: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LViewerSetFogDistance(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetFogDistance(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ViewerScreenToWorld: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LViewerScreenToWorld(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerScreenToWorld(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ViewerWorldToScreen: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LViewerWorldToScreen(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerWorldToScreen(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ViewerCopyToTexture: function(R1: Double; S2: PChar): Double; stdcall;
function LViewerCopyToTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerCopyToTexture(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ViewerGetFramesPerSecond: function(R1: Double): Double; stdcall;
function LViewerGetFramesPerSecond(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetFramesPerSecond(lua_tonumber(L,1)));
  Result:=1;
end;
var ViewerGetPickedObject: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LViewerGetPickedObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetPickedObject(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ViewerGetPickedObjectsList: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LViewerGetPickedObjectsList(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetPickedObjectsList(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var ViewerScreenToVector: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LViewerScreenToVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerScreenToVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ViewerVectorToScreen: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LViewerVectorToScreen(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerVectorToScreen(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ViewerPixelToDistance: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LViewerPixelToDistance(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerPixelToDistance(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ViewerSetAntiAliasing: function(R1: Double; R2: Double): Double; stdcall;
function LViewerSetAntiAliasing(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetAntiAliasing(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerGetVBOSupported: function(R1: Double): Double; stdcall;
function LViewerGetVBOSupported(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetVBOSupported(lua_tonumber(L,1)));
  Result:=1;
end;
var ViewerGetGLSLSupported: function(R1: Double): Double; stdcall;
function LViewerGetGLSLSupported(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetGLSLSupported(lua_tonumber(L,1)));
  Result:=1;
end;
var ViewerSetOverrideMaterial: function(R1: Double; R2: Double; S3: PChar): Double; stdcall;
function LViewerSetOverrideMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerSetOverrideMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var ViewerGetSize: function(R1: Double; R2: Double): Double; stdcall;
function LViewerGetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerGetPosition: function(R1: Double; R2: Double): Double; stdcall;
function LViewerGetPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerGetPosition(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ViewerIsOpenGLExtensionSupported: function(R1: Double; S2: PChar): Double; stdcall;
function LViewerIsOpenGLExtensionSupported(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ViewerIsOpenGLExtensionSupported(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var DummycubeCreate: function(R1: Double): Double; stdcall;
function LDummycubeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DummycubeCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var DummycubeAmalgamate: function(R1: Double; R2: Double): Double; stdcall;
function LDummycubeAmalgamate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DummycubeAmalgamate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DummycubeSetCameraMode: function(R1: Double; R2: Double): Double; stdcall;
function LDummycubeSetCameraMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DummycubeSetCameraMode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DummycubeSetVisible: function(R1: Double; R2: Double): Double; stdcall;
function LDummycubeSetVisible(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DummycubeSetVisible(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DummycubeSetEdgeColor: function(R1: Double; R2: Double): Double; stdcall;
function LDummycubeSetEdgeColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DummycubeSetEdgeColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DummycubeSetCubeSize: function(R1: Double; R2: Double): Double; stdcall;
function LDummycubeSetCubeSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DummycubeSetCubeSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraCreate: function(R1: Double): Double; stdcall;
function LCameraCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var CameraSetStyle: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetStyle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetStyle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraSetFocal: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetFocal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetFocal(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraSetSceneScale: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetSceneScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetSceneScale(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraScaleScene: function(R1: Double; R2: Double): Double; stdcall;
function LCameraScaleScene(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraScaleScene(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraSetViewDepth: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetViewDepth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetViewDepth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraSetTargetObject: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetTargetObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetTargetObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraMoveAroundTarget: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LCameraMoveAroundTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraMoveAroundTarget(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CameraSetDistanceToTarget: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetDistanceToTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetDistanceToTarget(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraGetDistanceToTarget: function(R1: Double): Double; stdcall;
function LCameraGetDistanceToTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraGetDistanceToTarget(lua_tonumber(L,1)));
  Result:=1;
end;
var CameraCopyToTexture: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; stdcall;
function LCameraCopyToTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraCopyToTexture(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CameraGetNearPlane: function(R1: Double): Double; stdcall;
function LCameraGetNearPlane(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraGetNearPlane(lua_tonumber(L,1)));
  Result:=1;
end;
var CameraSetNearPlaneBias: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetNearPlaneBias(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetNearPlaneBias(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraAbsoluteVectorToTarget: function(R1: Double; R2: Double): Double; stdcall;
function LCameraAbsoluteVectorToTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraAbsoluteVectorToTarget(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraAbsoluteRightVectorToTarget: function(R1: Double; R2: Double): Double; stdcall;
function LCameraAbsoluteRightVectorToTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraAbsoluteRightVectorToTarget(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraAbsoluteUpVectorToTarget: function(R1: Double; R2: Double): Double; stdcall;
function LCameraAbsoluteUpVectorToTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraAbsoluteUpVectorToTarget(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraZoomAll: function(R1: Double): Double; stdcall;
function LCameraZoomAll(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraZoomAll(lua_tonumber(L,1)));
  Result:=1;
end;
var CameraScreenDeltaToVector: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; stdcall;
function LCameraScreenDeltaToVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraScreenDeltaToVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var CameraScreenDeltaToVectorXY: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LCameraScreenDeltaToVectorXY(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraScreenDeltaToVectorXY(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var CameraScreenDeltaToVectorXZ: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LCameraScreenDeltaToVectorXZ(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraScreenDeltaToVectorXZ(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var CameraScreenDeltaToVectorYZ: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LCameraScreenDeltaToVectorYZ(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraScreenDeltaToVectorYZ(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var CameraAbsoluteEyeSpaceVector: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LCameraAbsoluteEyeSpaceVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraAbsoluteEyeSpaceVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var CameraSetAutoLeveling: function(R1: Double; R2: Double): Double; stdcall;
function LCameraSetAutoLeveling(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraSetAutoLeveling(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CameraMoveInEyeSpace: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; stdcall;
function LCameraMoveInEyeSpace(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraMoveInEyeSpace(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CameraMoveTargetInEyeSpace: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; stdcall;
function LCameraMoveTargetInEyeSpace(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraMoveTargetInEyeSpace(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CameraPointInFront: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; stdcall;
function LCameraPointInFront(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraPointInFront(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CameraGetFieldOfView: function(R1: Double; R2: Double): Double; stdcall;
function LCameraGetFieldOfView(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CameraGetFieldOfView(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightCreate: function(R1: Double; R2: Double): Double; stdcall;
function LLightCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightSetAmbientColor: function(R1: Double; R2: Double): Double; stdcall;
function LLightSetAmbientColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetAmbientColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightSetDiffuseColor: function(R1: Double; R2: Double): Double; stdcall;
function LLightSetDiffuseColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetDiffuseColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightSetSpecularColor: function(R1: Double; R2: Double): Double; stdcall;
function LLightSetSpecularColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetSpecularColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightSetAttenuation: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LLightSetAttenuation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetAttenuation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var LightSetShining: function(R1: Double; R2: Double): Double; stdcall;
function LLightSetShining(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetShining(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightSetSpotCutoff: function(R1: Double; R2: Double): Double; stdcall;
function LLightSetSpotCutoff(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetSpotCutoff(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightSetSpotExponent: function(R1: Double; R2: Double): Double; stdcall;
function LLightSetSpotExponent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetSpotExponent(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LightSetSpotDirection: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LLightSetSpotDirection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetSpotDirection(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var LightSetStyle: function(R1: Double; R2: Double): Double; stdcall;
function LLightSetStyle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LightSetStyle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BmpfontCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; stdcall;
function LBmpfontCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BmpfontCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var BmpfontLoad: function(R1: Double; S2: PChar): Double; stdcall;
function LBmpfontLoad(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BmpfontLoad(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var WindowsBitmapfontCreate: function(S1: PChar; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LWindowsBitmapfontCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WindowsBitmapfontCreate(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var HUDTextCreate: function(R1: Double; S2: PChar; R3: Double): Double; stdcall;
function LHUDTextCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDTextCreate(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDTextSetRotation: function(R1: Double; R2: Double): Double; stdcall;
function LHUDTextSetRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDTextSetRotation(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDTextSetFont: function(R1: Double; R2: Double): Double; stdcall;
function LHUDTextSetFont(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDTextSetFont(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDTextSetColor: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LHUDTextSetColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDTextSetColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDTextSetText: function(R1: Double; S2: PChar): Double; stdcall;
function LHUDTextSetText(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDTextSetText(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var FlatTextCreate: function(R1: Double; S2: PChar; R3: Double): Double; stdcall;
function LFlatTextCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FlatTextCreate(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FlatTextSetFont: function(R1: Double; R2: Double): Double; stdcall;
function LFlatTextSetFont(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FlatTextSetFont(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FlatTextSetColor: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LFlatTextSetColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FlatTextSetColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FlatTextSetText: function(R1: Double; S2: PChar): Double; stdcall;
function LFlatTextSetText(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FlatTextSetText(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var SpaceTextCreate: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; stdcall;
function LSpaceTextCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpaceTextCreate(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SpaceTextSetExtrusion: function(R1: Double; R2: Double): Double; stdcall;
function LSpaceTextSetExtrusion(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpaceTextSetExtrusion(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SpaceTextSetFont: function(R1: Double; R2: Double): Double; stdcall;
function LSpaceTextSetFont(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpaceTextSetFont(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SpaceTextSetText: function(R1: Double; S2: PChar): Double; stdcall;
function LSpaceTextSetText(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpaceTextSetText(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var TTFontCreate: function(S1: PChar; R2: Double): Double; stdcall;
function LTTFontCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TTFontCreate(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TTFontSetLineGap: function(R1: Double; R2: Double): Double; stdcall;
function LTTFontSetLineGap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TTFontSetLineGap(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDSpriteCreate: function(S1: PChar; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LHUDSpriteCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDSpriteCreate(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SpriteCreate: function(S1: PChar; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LSpriteCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteCreate(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SpriteSetSize: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LSpriteSetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteSetSize(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SpriteScale: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LSpriteScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteScale(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SpriteSetRotation: function(R1: Double; R2: Double): Double; stdcall;
function LSpriteSetRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteSetRotation(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SpriteRotate: function(R1: Double; R2: Double): Double; stdcall;
function LSpriteRotate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteRotate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SpriteMirror: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LSpriteMirror(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteMirror(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SpriteNoZWrite: function(R1: Double; R2: Double): Double; stdcall;
function LSpriteNoZWrite(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteNoZWrite(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SpriteSetBounds: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LSpriteSetBounds(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteSetBounds(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SpriteSetBoundsUV: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LSpriteSetBoundsUV(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteSetBoundsUV(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SpriteSetOrigin: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LSpriteSetOrigin(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteSetOrigin(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SpriteCreateEx: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LSpriteCreateEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SpriteCreateEx(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var HUDSpriteCreateEx: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LHUDSpriteCreateEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDSpriteCreateEx(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var HUDShapeRectangleCreate: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LHUDShapeRectangleCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeRectangleCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDShapeCircleCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LHUDShapeCircleCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeCircleCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var HUDShapeLineCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LHUDShapeLineCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeLineCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var HUDShapeMeshCreate: function(R1: Double): Double; stdcall;
function LHUDShapeMeshCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeMeshCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var HUDShapeCircleSetRadius: function(R1: Double; R2: Double): Double; stdcall;
function LHUDShapeCircleSetRadius(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeCircleSetRadius(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDShapeCircleSetSlices: function(R1: Double; R2: Double): Double; stdcall;
function LHUDShapeCircleSetSlices(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeCircleSetSlices(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDShapeCircleSetAngles: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LHUDShapeCircleSetAngles(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeCircleSetAngles(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDShapeLineSetPoints: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LHUDShapeLineSetPoints(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeLineSetPoints(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var HUDShapeLineSetWidth: function(R1: Double; R2: Double): Double; stdcall;
function LHUDShapeLineSetWidth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeLineSetWidth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDShapeSetRotation: function(R1: Double; R2: Double): Double; stdcall;
function LHUDShapeSetRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeSetRotation(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDShapeRotate: function(R1: Double; R2: Double): Double; stdcall;
function LHUDShapeRotate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeRotate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HUDShapeSetOrigin: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LHUDShapeSetOrigin(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeSetOrigin(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDShapeSetSize: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LHUDShapeSetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeSetSize(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDShapeScale: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LHUDShapeScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeScale(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDShapeSetColor: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LHUDShapeSetColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeSetColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var HUDShapeMeshAddVertex: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LHUDShapeMeshAddVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeMeshAddVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var HUDShapeMeshAddTriangle: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LHUDShapeMeshAddTriangle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeMeshAddTriangle(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var HUDShapeMeshSetVertex: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LHUDShapeMeshSetVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeMeshSetVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var HUDShapeMeshSetTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LHUDShapeMeshSetTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HUDShapeMeshSetTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var PlaneCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LPlaneCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PlaneCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var CubeCreate: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LCubeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CubeCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CubeSetNormalDirection: function(R1: Double; R2: Double): Double; stdcall;
function LCubeSetNormalDirection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CubeSetNormalDirection(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SphereCreate: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LSphereCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SphereCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SphereSetAngleLimits: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LSphereSetAngleLimits(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SphereSetAngleLimits(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var CylinderCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LCylinderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CylinderCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var ConeCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LConeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ConeCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var AnnulusCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LAnnulusCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AnnulusCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var TorusCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LTorusCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TorusCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var DiskCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LDiskCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DiskCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var FrustrumCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFrustrumCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FrustrumCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var DodecahedronCreate: function(R1: Double): Double; stdcall;
function LDodecahedronCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DodecahedronCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var IcosahedronCreate: function(R1: Double): Double; stdcall;
function LIcosahedronCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,IcosahedronCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var TeapotCreate: function(R1: Double): Double; stdcall;
function LTeapotCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TeapotCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var ActorCreate: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LActorCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorCreate(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorCopy: function(R1: Double; R2: Double): Double; stdcall;
function LActorCopy(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorCopy(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorSetAnimationRange: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LActorSetAnimationRange(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorSetAnimationRange(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorGetCurrentFrame: function(R1: Double): Double; stdcall;
function LActorGetCurrentFrame(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorGetCurrentFrame(lua_tonumber(L,1)));
  Result:=1;
end;
var ActorSwitchToAnimation: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LActorSwitchToAnimation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorSwitchToAnimation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorSwitchToAnimationName: function(R1: Double; S2: PChar; R3: Double): Double; stdcall;
function LActorSwitchToAnimationName(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorSwitchToAnimationName(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorSynchronize: function(R1: Double; R2: Double): Double; stdcall;
function LActorSynchronize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorSynchronize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorSetInterval: function(R1: Double; R2: Double): Double; stdcall;
function LActorSetInterval(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorSetInterval(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorSetAnimationMode: function(R1: Double; R2: Double): Double; stdcall;
function LActorSetAnimationMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorSetAnimationMode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorSetFrameInterpolation: function(R1: Double; R2: Double): Double; stdcall;
function LActorSetFrameInterpolation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorSetFrameInterpolation(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorAddObject: function(R1: Double; S2: PChar): Double; stdcall;
function LActorAddObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorAddObject(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ActorGetCurrentAnimation: function(R1: Double): PChar; stdcall;
function LActorGetCurrentAnimation(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,ActorGetCurrentAnimation(lua_tonumber(L,1)));
  Result:=1;
end;
var ActorGetFrameCount: function(R1: Double): Double; stdcall;
function LActorGetFrameCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorGetFrameCount(lua_tonumber(L,1)));
  Result:=1;
end;
var ActorGetBoneCount: function(R1: Double): Double; stdcall;
function LActorGetBoneCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorGetBoneCount(lua_tonumber(L,1)));
  Result:=1;
end;
var ActorGetBoneByName: function(R1: Double; S2: PChar): Double; stdcall;
function LActorGetBoneByName(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorGetBoneByName(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ActorGetBoneRotation: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LActorGetBoneRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorGetBoneRotation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorGetBonePosition: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LActorGetBonePosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorGetBonePosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorBoneExportMatrix: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LActorBoneExportMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorBoneExportMatrix(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorMakeSkeletalTranslationStatic: function(R1: Double; R2: Double): Double; stdcall;
function LActorMakeSkeletalTranslationStatic(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorMakeSkeletalTranslationStatic(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorMakeSkeletalRotationDelta: function(R1: Double; R2: Double): Double; stdcall;
function LActorMakeSkeletalRotationDelta(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorMakeSkeletalRotationDelta(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorShowSkeleton: function(R1: Double; R2: Double): Double; stdcall;
function LActorShowSkeleton(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorShowSkeleton(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var AnimationBlenderCreate: function(): Double; stdcall;
function LAnimationBlenderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AnimationBlenderCreate());
  Result:=1;
end;
var AnimationBlenderSetActor: function(R1: Double; R2: Double): Double; stdcall;
function LAnimationBlenderSetActor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AnimationBlenderSetActor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var AnimationBlenderSetAnimation: function(R1: Double; S2: PChar): Double; stdcall;
function LAnimationBlenderSetAnimation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AnimationBlenderSetAnimation(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var AnimationBlenderSetRatio: function(R1: Double; R2: Double): Double; stdcall;
function LAnimationBlenderSetRatio(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AnimationBlenderSetRatio(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorLoadQ3TagList: function(S1: PChar): Double; stdcall;
function LActorLoadQ3TagList(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorLoadQ3TagList(lua_tostring(L,1)));
  Result:=1;
end;
var ActorLoadQ3Animations: function(R1: Double; S2: PChar; S3: PChar): Double; stdcall;
function LActorLoadQ3Animations(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorLoadQ3Animations(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var ActorQ3TagExportMatrix: function(R1: Double; R2: Double; S3: PChar; R4: Double): Double; stdcall;
function LActorQ3TagExportMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorQ3TagExportMatrix(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ActorMeshObjectsCount: function(R1: Double): Double; stdcall;
function LActorMeshObjectsCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorMeshObjectsCount(lua_tonumber(L,1)));
  Result:=1;
end;
var ActorFaceGroupsCount: function(R1: Double; R2: Double): Double; stdcall;
function LActorFaceGroupsCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorFaceGroupsCount(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ActorFaceGroupGetMaterialName: function(R1: Double; R2: Double; R3: Double): PChar; stdcall;
function LActorFaceGroupGetMaterialName(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,ActorFaceGroupGetMaterialName(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ActorFaceGroupSetMaterial: function(R1: Double; R2: Double; R3: Double; S4: PChar): Double; stdcall;
function LActorFaceGroupSetMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ActorFaceGroupSetMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var FreeformCreate: function(S1: PChar; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformCreate(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformCreateEmpty: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LFreeformCreateEmpty(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformCreateEmpty(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FreeformAddMesh: function(R1: Double): Double; stdcall;
function LFreeformAddMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformAddMesh(lua_tonumber(L,1)));
  Result:=1;
end;
var FreeformMeshAddVertex: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshAddVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshAddVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshAddNormal: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshAddNormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshAddNormal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshAddTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshAddTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshAddTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshAddSecondTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshAddSecondTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshAddSecondTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshAddTangent: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshAddTangent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshAddTangent(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshAddBinormal: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshAddBinormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshAddBinormal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshVerticesCount: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformMeshVerticesCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshVerticesCount(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformMeshTriangleCount: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformMeshTriangleCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshTriangleCount(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformMeshObjectsCount: function(R1: Double): Double; stdcall;
function LFreeformMeshObjectsCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshObjectsCount(lua_tonumber(L,1)));
  Result:=1;
end;
var FreeformMeshAddFaceGroup: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformMeshAddFaceGroup(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshAddFaceGroup(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformMeshFaceGroupAddTriangle: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LFreeformMeshFaceGroupAddTriangle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshFaceGroupAddTriangle(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var FreeformMeshFaceGroupTriangleCount: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LFreeformMeshFaceGroupTriangleCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshFaceGroupTriangleCount(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FreeformMeshFaceGroupSetMaterial: function(R1: Double; R2: Double; R3: Double; S4: PChar): Double; stdcall;
function LFreeformMeshFaceGroupSetMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshFaceGroupSetMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var FreeformMeshFaceGroupGetMaterial: function(R1: Double; R2: Double; R3: Double): PChar; stdcall;
function LFreeformMeshFaceGroupGetMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,FreeformMeshFaceGroupGetMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FreeformMeshFaceGroupsCount: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformMeshFaceGroupsCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshFaceGroupsCount(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformMeshGenNormals: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformMeshGenNormals(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGenNormals(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformMeshGenTangents: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformMeshGenTangents(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGenTangents(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformMeshSetVisible: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LFreeformMeshSetVisible(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetVisible(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FreeformMeshSetSecondCoords: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshSetSecondCoords(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetSecondCoords(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshGetVertex: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshGetVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGetVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshGetNormal: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshGetNormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGetNormal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshGetTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshGetTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGetTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshGetSecondTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshGetSecondTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGetSecondTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshGetTangent: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshGetTangent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGetTangent(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshGetBinormal: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshGetBinormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshGetBinormal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshFaceGroupGetIndex: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformMeshFaceGroupGetIndex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshFaceGroupGetIndex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformMeshSetVertex: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LFreeformMeshSetVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var FreeformMeshSetNormal: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LFreeformMeshSetNormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetNormal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var FreeformMeshSetTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshSetTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshSetSecondTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshSetSecondTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetSecondTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshSetTangent: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LFreeformMeshSetTangent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetTangent(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var FreeformMeshSetBinormal: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LFreeformMeshSetBinormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetBinormal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var FreeformMeshFaceGroupSetIndex: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshFaceGroupSetIndex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshFaceGroupSetIndex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshTranslate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshTranslate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshTranslate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshRotate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshRotate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshRotate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshScale: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFreeformMeshScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshScale(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FreeformMeshSetMaterial: function(R1: Double; R2: Double; S3: PChar): Double; stdcall;
function LFreeformMeshSetMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformMeshSetMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var FreeformUseMeshMaterials: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformUseMeshMaterials(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformUseMeshMaterials(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformPointInMesh: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformPointInMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformPointInMesh(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformSphereSweepIntersect: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFreeformSphereSweepIntersect(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformSphereSweepIntersect(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FreeformToFreeforms: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformToFreeforms(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformToFreeforms(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformSave: function(R1: Double; S2: PChar): Double; stdcall;
function LFreeformSave(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformSave(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var FreeformGenTangents: function(R1: Double): Double; stdcall;
function LFreeformGenTangents(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformGenTangents(lua_tonumber(L,1)));
  Result:=1;
end;
var FreeformBuildOctree: function(R1: Double): Double; stdcall;
function LFreeformBuildOctree(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformBuildOctree(lua_tonumber(L,1)));
  Result:=1;
end;
var FreeformCreateExplosionFX: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformCreateExplosionFX(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformCreateExplosionFX(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformExplosionFXReset: function(R1: Double): Double; stdcall;
function LFreeformExplosionFXReset(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformExplosionFXReset(lua_tonumber(L,1)));
  Result:=1;
end;
var FreeformExplosionFXEnable: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformExplosionFXEnable(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformExplosionFXEnable(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FreeformExplosionFXSetSpeed: function(R1: Double; R2: Double): Double; stdcall;
function LFreeformExplosionFXSetSpeed(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FreeformExplosionFXSetSpeed(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BmpHDSCreate: function(S1: PChar): Double; stdcall;
function LBmpHDSCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BmpHDSCreate(lua_tostring(L,1)));
  Result:=1;
end;
var BmpHDSSetInfiniteWarp: function(R1: Double; R2: Double): Double; stdcall;
function LBmpHDSSetInfiniteWarp(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BmpHDSSetInfiniteWarp(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BmpHDSInvert: function(R1: Double): Double; stdcall;
function LBmpHDSInvert(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BmpHDSInvert(lua_tonumber(L,1)));
  Result:=1;
end;
var TerrainCreate: function(R1: Double): Double; stdcall;
function LTerrainCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var TerrainSetHeightData: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetHeightData(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetHeightData(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetTileSize: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetTileSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetTileSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetTilesPerTexture: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetTilesPerTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetTilesPerTexture(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetQualityDistance: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetQualityDistance(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetQualityDistance(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetQualityStyle: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetQualityStyle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetQualityStyle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetMaxCLodTriangles: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetMaxCLodTriangles(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetMaxCLodTriangles(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetCLodPrecision: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetCLodPrecision(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetCLodPrecision(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetOcclusionFrameSkip: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetOcclusionFrameSkip(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetOcclusionFrameSkip(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainSetOcclusionTesselate: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainSetOcclusionTesselate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainSetOcclusionTesselate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainGetHeightAtObjectPosition: function(R1: Double; R2: Double): Double; stdcall;
function LTerrainGetHeightAtObjectPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainGetHeightAtObjectPosition(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TerrainGetLastTriCount: function(R1: Double): Double; stdcall;
function LTerrainGetLastTriCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TerrainGetLastTriCount(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectHide: function(R1: Double): Double; stdcall;
function LObjectHide(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHide(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectShow: function(R1: Double): Double; stdcall;
function LObjectShow(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectShow(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectIsVisible: function(R1: Double): Double; stdcall;
function LObjectIsVisible(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectIsVisible(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectCopy: function(R1: Double; R2: Double): Double; stdcall;
function LObjectCopy(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectCopy(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectDestroy: function(R1: Double): Double; stdcall;
function LObjectDestroy(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectDestroy(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectDestroyChildren: function(R1: Double): Double; stdcall;
function LObjectDestroyChildren(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectDestroyChildren(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectSetPosition: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectGetPosition: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetPosition(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetAbsolutePosition: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetAbsolutePosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetAbsolutePosition(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetPositionOfObject: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSetPositionOfObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetPositionOfObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectAlignWithObject: function(R1: Double; R2: Double): Double; stdcall;
function LObjectAlignWithObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectAlignWithObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetPositionX: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSetPositionX(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetPositionX(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetPositionY: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSetPositionY(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetPositionY(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetPositionZ: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSetPositionZ(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetPositionZ(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetDirection: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetDirection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetDirection(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetAbsoluteDirection: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetAbsoluteDirection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetAbsoluteDirection(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetAbsolutePosition: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetAbsolutePosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetAbsolutePosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectGetPositionX: function(R1: Double): Double; stdcall;
function LObjectGetPositionX(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetPositionX(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetPositionY: function(R1: Double): Double; stdcall;
function LObjectGetPositionY(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetPositionY(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetPositionZ: function(R1: Double): Double; stdcall;
function LObjectGetPositionZ(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetPositionZ(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectSetDirection: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetDirection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetDirection(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectSetAbsoluteDirection: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetAbsoluteDirection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetAbsoluteDirection(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectGetPitch: function(R1: Double): Double; stdcall;
function LObjectGetPitch(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetPitch(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetTurn: function(R1: Double): Double; stdcall;
function LObjectGetTurn(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetTurn(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetRoll: function(R1: Double): Double; stdcall;
function LObjectGetRoll(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetRoll(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectSetRotation: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetRotation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectMove: function(R1: Double; R2: Double): Double; stdcall;
function LObjectMove(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectMove(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectLift: function(R1: Double; R2: Double): Double; stdcall;
function LObjectLift(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectLift(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectStrafe: function(R1: Double; R2: Double): Double; stdcall;
function LObjectStrafe(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectStrafe(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectTranslate: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectTranslate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectTranslate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectRotate: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectRotate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectRotate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectScale: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectScale(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectSetScale: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetScale(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectSetUpVector: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetUpVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetUpVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectPointToObject: function(R1: Double; R2: Double): Double; stdcall;
function LObjectPointToObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectPointToObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectShowAxes: function(R1: Double; R2: Double): Double; stdcall;
function LObjectShowAxes(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectShowAxes(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetGroundHeight: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetGroundHeight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetGroundHeight(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSceneRaycast: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSceneRaycast(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSceneRaycast(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectRaycast: function(R1: Double; R2: Double): Double; stdcall;
function LObjectRaycast(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectRaycast(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetCollisionPosition: function(R1: Double): Double; stdcall;
function LObjectGetCollisionPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetCollisionPosition(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetCollisionNormal: function(R1: Double): Double; stdcall;
function LObjectGetCollisionNormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetCollisionNormal(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectSetMaterial: function(R1: Double; S2: PChar): Double; stdcall;
function LObjectSetMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetMaterial(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ObjectGetDistance: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetDistance(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetDistance(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectCheckCubeVsCube: function(R1: Double; R2: Double): Double; stdcall;
function LObjectCheckCubeVsCube(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectCheckCubeVsCube(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectCheckSphereVsSphere: function(R1: Double; R2: Double): Double; stdcall;
function LObjectCheckSphereVsSphere(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectCheckSphereVsSphere(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectCheckSphereVsCube: function(R1: Double; R2: Double): Double; stdcall;
function LObjectCheckSphereVsCube(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectCheckSphereVsCube(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectCheckCubeVsFace: function(R1: Double; R2: Double): Double; stdcall;
function LObjectCheckCubeVsFace(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectCheckCubeVsFace(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectCheckFaceVsFace: function(R1: Double; R2: Double): Double; stdcall;
function LObjectCheckFaceVsFace(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectCheckFaceVsFace(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectIsPointInObject: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectIsPointInObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectIsPointInObject(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectSetCulling: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSetCulling(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetCulling(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetName: function(R1: Double; S2: PChar): Double; stdcall;
function LObjectSetName(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetName(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ObjectGetName: function(R1: Double): PChar; stdcall;
function LObjectGetName(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,ObjectGetName(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetClassName: function(R1: Double): PChar; stdcall;
function LObjectGetClassName(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,ObjectGetClassName(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectSetTag: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSetTag(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetTag(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetTag: function(R1: Double): Double; stdcall;
function LObjectGetTag(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetTag(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetParent: function(R1: Double): Double; stdcall;
function LObjectGetParent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetParent(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetChildCount: function(R1: Double): Double; stdcall;
function LObjectGetChildCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetChildCount(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetChild: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetChild(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetChild(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetIndex: function(R1: Double): Double; stdcall;
function LObjectGetIndex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetIndex(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectFindChild: function(R1: Double; S2: PChar): Double; stdcall;
function LObjectFindChild(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectFindChild(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ObjectGetBoundingSphereRadius: function(R1: Double): Double; stdcall;
function LObjectGetBoundingSphereRadius(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetBoundingSphereRadius(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectGetAbsoluteUp: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetAbsoluteUp(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetAbsoluteUp(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetAbsoluteUp: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectSetAbsoluteUp(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetAbsoluteUp(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectGetAbsoluteRight: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetAbsoluteRight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetAbsoluteRight(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetAbsoluteXVector: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetAbsoluteXVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetAbsoluteXVector(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetAbsoluteYVector: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetAbsoluteYVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetAbsoluteYVector(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetAbsoluteZVector: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetAbsoluteZVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetAbsoluteZVector(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetRight: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetRight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetRight(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectMoveChildUp: function(R1: Double; R2: Double): Double; stdcall;
function LObjectMoveChildUp(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectMoveChildUp(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectMoveChildDown: function(R1: Double; R2: Double): Double; stdcall;
function LObjectMoveChildDown(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectMoveChildDown(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectSetParent: function(R1: Double; R2: Double): Double; stdcall;
function LObjectSetParent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetParent(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectRemoveChild: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LObjectRemoveChild(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectRemoveChild(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ObjectMoveObjectAround: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectMoveObjectAround(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectMoveObjectAround(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectPitch: function(R1: Double; R2: Double): Double; stdcall;
function LObjectPitch(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectPitch(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectTurn: function(R1: Double; R2: Double): Double; stdcall;
function LObjectTurn(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectTurn(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectRoll: function(R1: Double; R2: Double): Double; stdcall;
function LObjectRoll(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectRoll(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectGetUp: function(R1: Double; R2: Double): Double; stdcall;
function LObjectGetUp(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectGetUp(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectRotateAbsolute: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LObjectRotateAbsolute(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectRotateAbsolute(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ObjectRotateAbsoluteVector: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LObjectRotateAbsoluteVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectRotateAbsoluteVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ObjectSetMatrixColumn: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LObjectSetMatrixColumn(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectSetMatrixColumn(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var ObjectExportMatrix: function(R1: Double; R2: Double): Double; stdcall;
function LObjectExportMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectExportMatrix(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ObjectExportAbsoluteMatrix: function(R1: Double; R2: Double): Double; stdcall;
function LObjectExportAbsoluteMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectExportAbsoluteMatrix(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PolygonCreate: function(R1: Double): Double; stdcall;
function LPolygonCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PolygonCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var PolygonAddVertex: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LPolygonAddVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PolygonAddVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var PolygonSetVertexPosition: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LPolygonSetVertexPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PolygonSetVertexPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var PolygonDeleteVertex: function(R1: Double; R2: Double): Double; stdcall;
function LPolygonDeleteVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PolygonDeleteVertex(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialLibraryCreate: function(): Double; stdcall;
function LMaterialLibraryCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLibraryCreate());
  Result:=1;
end;
var MaterialLibraryActivate: function(R1: Double): Double; stdcall;
function LMaterialLibraryActivate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLibraryActivate(lua_tonumber(L,1)));
  Result:=1;
end;
var MaterialLibrarySetTexturePaths: function(R1: Double; S2: PChar): Double; stdcall;
function LMaterialLibrarySetTexturePaths(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLibrarySetTexturePaths(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialLibraryClear: function(R1: Double): Double; stdcall;
function LMaterialLibraryClear(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLibraryClear(lua_tonumber(L,1)));
  Result:=1;
end;
var MaterialLibraryDeleteUnused: function(R1: Double): Double; stdcall;
function LMaterialLibraryDeleteUnused(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLibraryDeleteUnused(lua_tonumber(L,1)));
  Result:=1;
end;
var MaterialLibraryHasMaterial: function(R1: Double; S2: PChar): Double; stdcall;
function LMaterialLibraryHasMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLibraryHasMaterial(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialLibraryLoadScript: function(R1: Double; S2: PChar): Double; stdcall;
function LMaterialLibraryLoadScript(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLibraryLoadScript(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialCreate: function(S1, S2: PChar): Double; stdcall;
function LMaterialCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialCreate(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialAddCubeMap: function(S1: PChar): Double; stdcall;
function LMaterialAddCubeMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialAddCubeMap(lua_tostring(L,1)));
  Result:=1;
end;
var MaterialCubeMapLoadImage: function(S1: PChar; S2: PChar; R3: Double): Double; stdcall;
function LMaterialCubeMapLoadImage(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialCubeMapLoadImage(lua_tostring(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialCubeMapGenerate: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialCubeMapGenerate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialCubeMapGenerate(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialCubeMapFromScene: function(S1: PChar; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LMaterialCubeMapFromScene(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialCubeMapFromScene(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var MaterialSetBlendingMode: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetBlendingMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetBlendingMode(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetOptions: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetOptions(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetTextureMode: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetTextureMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureMode(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetTextureMappingMode: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetTextureMappingMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureMappingMode(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetPolygonMode: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetPolygonMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetPolygonMode(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetTextureScale: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetTextureScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureScale(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetTextureOffset: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetTextureOffset(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureOffset(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetTextureFilter: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetTextureFilter(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureFilter(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetTextureImageAlpha: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetTextureImageAlpha(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureImageAlpha(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialEnableTexture: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialEnableTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialEnableTexture(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialGetCount: function(): Double; stdcall;
function LMaterialGetCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialGetCount());
  Result:=1;
end;
var MaterialGetName: function(R1: Double): PChar; stdcall;
function LMaterialGetName(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,MaterialGetName(lua_tonumber(L,1)));
  Result:=1;
end;
var MaterialSetFaceCulling: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetFaceCulling(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetFaceCulling(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetTextureFormat: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetTextureFormat(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureFormat(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetTextureCompression: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetTextureCompression(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureCompression(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialTextureRequiredMemory: function(S1: PChar): Double; stdcall;
function LMaterialTextureRequiredMemory(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialTextureRequiredMemory(lua_tostring(L,1)));
  Result:=1;
end;
var MaterialSetFilteringQuality: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetFilteringQuality(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetFilteringQuality(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialAddTextureEx: function(S1: PChar; S2: PChar): Double; stdcall;
function LMaterialAddTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialAddTextureEx(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialTextureExClear: function(S1: PChar): Double; stdcall;
function LMaterialTextureExClear(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialTextureExClear(lua_tostring(L,1)));
  Result:=1;
end;
var MaterialTextureExDelete: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialTextureExDelete(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialTextureExDelete(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetTexture: function(S1: PChar; S2: PChar): Double; stdcall;
function LMaterialSetTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTexture(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialSetSecondTexture: function(S1: PChar; S2: PChar): Double; stdcall;
function LMaterialSetSecondTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetSecondTexture(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialSetShininess: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetShininess(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetShininess(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetAmbientColor: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetAmbientColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetAmbientColor(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetDiffuseColor: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetDiffuseColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetDiffuseColor(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetSpecularColor: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetSpecularColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetSpecularColor(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetEmissionColor: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialSetEmissionColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetEmissionColor(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetShader: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetShader(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetShader(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSaveTexture: function(S1: PChar; S2: PChar): Double; stdcall;
function LMaterialSaveTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSaveTexture(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialNoiseCreate: function(S1: PChar): Double; stdcall;
function LMaterialNoiseCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialNoiseCreate(lua_tostring(L,1)));
  Result:=1;
end;
var MaterialNoiseAnimate: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialNoiseAnimate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialNoiseAnimate(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialNoiseSetDimensions: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialNoiseSetDimensions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialNoiseSetDimensions(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialNoiseSetMinCut: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialNoiseSetMinCut(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialNoiseSetMinCut(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialNoiseSetSharpness: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialNoiseSetSharpness(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialNoiseSetSharpness(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialNoiseSetSeamless: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialNoiseSetSeamless(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialNoiseSetSeamless(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialNoiseRandomSeed: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialNoiseRandomSeed(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialNoiseRandomSeed(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialGenTexture: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialGenTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialGenTexture(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetTextureWrap: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetTextureWrap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureWrap(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialGetTextureWidth: function(S1: PChar): Double; stdcall;
function LMaterialGetTextureWidth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialGetTextureWidth(lua_tostring(L,1)));
  Result:=1;
end;
var MaterialGetTextureHeight: function(S1: PChar): Double; stdcall;
function LMaterialGetTextureHeight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialGetTextureHeight(lua_tostring(L,1)));
  Result:=1;
end;
var MaterialLoadTexture: function(S1: PChar; S2: PChar): Double; stdcall;
function LMaterialLoadTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLoadTexture(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MaterialLoadTextureEx: function(S1: PChar; S2: PChar; R3: Double): Double; stdcall;
function LMaterialLoadTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialLoadTextureEx(lua_tostring(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialSetTextureEx: function(S1: PChar; S2: PChar; R3: Double): Double; stdcall;
function LMaterialSetTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetTextureEx(lua_tostring(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialGenTextureEx: function(S1: PChar; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LMaterialGenTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialGenTextureEx(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var MaterialEnableTextureEx: function(S1: PChar; R2: Double; R3: Double): Double; stdcall;
function LMaterialEnableTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialEnableTextureEx(lua_tostring(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MaterialHasTextureEx: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialHasTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialHasTextureEx(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialCullFrontFaces: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialCullFrontFaces(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialCullFrontFaces(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MaterialSetZWrite: function(S1: PChar; R2: Double): Double; stdcall;
function LMaterialSetZWrite(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MaterialSetZWrite(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShaderEnable: function(R1: Double; R2: Double): Double; stdcall;
function LShaderEnable(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShaderEnable(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PhongShaderCreate: function(): Double; stdcall;
function LPhongShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PhongShaderCreate());
  Result:=1;
end;
var PhongShaderUseTexture: function(R1: Double; R2: Double): Double; stdcall;
function LPhongShaderUseTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PhongShaderUseTexture(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PhongShaderSetMaxLights: function(R1: Double; R2: Double): Double; stdcall;
function LPhongShaderSetMaxLights(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PhongShaderSetMaxLights(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BumpShaderCreate: function(): Double; stdcall;
function LBumpShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderCreate());
  Result:=1;
end;
var BumpShaderSetDiffuseTexture: function(R1: Double; S2: PChar): Double; stdcall;
function LBumpShaderSetDiffuseTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderSetDiffuseTexture(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var BumpShaderSetNormalTexture: function(R1: Double; S2: PChar): Double; stdcall;
function LBumpShaderSetNormalTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderSetNormalTexture(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var BumpShaderSetHeightTexture: function(R1: Double; S2: PChar): Double; stdcall;
function LBumpShaderSetHeightTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderSetHeightTexture(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var BumpShaderSetMaxLights: function(R1: Double; R2: Double): Double; stdcall;
function LBumpShaderSetMaxLights(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderSetMaxLights(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BumpShaderUseParallax: function(R1: Double; R2: Double): Double; stdcall;
function LBumpShaderUseParallax(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderUseParallax(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BumpShaderSetParallaxOffset: function(R1: Double; R2: Double): Double; stdcall;
function LBumpShaderSetParallaxOffset(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderSetParallaxOffset(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BumpShaderSetShadowMap: function(R1: Double; R2: Double): Double; stdcall;
function LBumpShaderSetShadowMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderSetShadowMap(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BumpShaderSetShadowBlurRadius: function(R1: Double; R2: Double): Double; stdcall;
function LBumpShaderSetShadowBlurRadius(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderSetShadowBlurRadius(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BumpShaderUseAutoTangentSpace: function(R1: Double; R2: Double): Double; stdcall;
function LBumpShaderUseAutoTangentSpace(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BumpShaderUseAutoTangentSpace(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CelShaderCreate: function(): Double; stdcall;
function LCelShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CelShaderCreate());
  Result:=1;
end;
var CelShaderSetLineColor: function(R1: Double; R2: Double): Double; stdcall;
function LCelShaderSetLineColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CelShaderSetLineColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CelShaderSetLineWidth: function(R1: Double; R2: Double): Double; stdcall;
function LCelShaderSetLineWidth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CelShaderSetLineWidth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CelShaderSetOptions: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LCelShaderSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CelShaderSetOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MultiMaterialShaderCreate: function(R1: Double): Double; stdcall;
function LMultiMaterialShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MultiMaterialShaderCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var HiddenLineShaderCreate: function(): Double; stdcall;
function LHiddenLineShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HiddenLineShaderCreate());
  Result:=1;
end;
var HiddenLineShaderSetLineSmooth: function(R1: Double; R2: Double): Double; stdcall;
function LHiddenLineShaderSetLineSmooth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HiddenLineShaderSetLineSmooth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HiddenLineShaderSetSolid: function(R1: Double; R2: Double): Double; stdcall;
function LHiddenLineShaderSetSolid(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HiddenLineShaderSetSolid(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HiddenLineShaderSetSurfaceLit: function(R1: Double; R2: Double): Double; stdcall;
function LHiddenLineShaderSetSurfaceLit(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HiddenLineShaderSetSurfaceLit(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var HiddenLineShaderSetFrontLine: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LHiddenLineShaderSetFrontLine(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HiddenLineShaderSetFrontLine(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var HiddenLineShaderSetBackLine: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LHiddenLineShaderSetBackLine(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,HiddenLineShaderSetBackLine(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var OutlineShaderCreate: function(R1: Double): Double; stdcall;
function LOutlineShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OutlineShaderCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var OutlineShaderSetLineColor: function(R1: Double; R2: Double): Double; stdcall;
function LOutlineShaderSetLineColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OutlineShaderSetLineColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OutlineShaderSetLineWidth: function(R1: Double; R2: Double): Double; stdcall;
function LOutlineShaderSetLineWidth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OutlineShaderSetLineWidth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TexCombineShaderCreate: function(R1: Double): Double; stdcall;
function LTexCombineShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TexCombineShaderCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var TexCombineShaderAddCombiner: function(R1: Double; S2: PChar): Double; stdcall;
function LTexCombineShaderAddCombiner(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TexCombineShaderAddCombiner(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var TexCombineShaderMaterial3: function(R1: Double; S2: PChar): Double; stdcall;
function LTexCombineShaderMaterial3(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TexCombineShaderMaterial3(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var TexCombineShaderMaterial4: function(R1: Double; S2: PChar): Double; stdcall;
function LTexCombineShaderMaterial4(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TexCombineShaderMaterial4(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var GLSLShaderCreate: function(S1: PChar; S2: PChar): Double; stdcall;
function LGLSLShaderCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderCreate(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var GLSLShaderCreateParameter: function(R1: Double; S2: PChar): Double; stdcall;
function LGLSLShaderCreateParameter(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderCreateParameter(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var GLSLShaderSetParameter1i: function(R1: Double; R2: Double): Double; stdcall;
function LGLSLShaderSetParameter1i(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameter1i(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GLSLShaderSetParameter1f: function(R1: Double; R2: Double): Double; stdcall;
function LGLSLShaderSetParameter1f(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameter1f(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GLSLShaderSetParameter2f: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LGLSLShaderSetParameter2f(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameter2f(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GLSLShaderSetParameter3f: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LGLSLShaderSetParameter3f(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameter3f(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var GLSLShaderSetParameter4f: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LGLSLShaderSetParameter4f(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameter4f(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var GLSLShaderSetParameterTexture: function(R1: Double; S2: PChar; R3: Double): Double; stdcall;
function LGLSLShaderSetParameterTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterTexture(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GLSLShaderSetParameterSecondTexture: function(R1: Double; S2: PChar; R3: Double): Double; stdcall;
function LGLSLShaderSetParameterSecondTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterSecondTexture(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GLSLShaderSetParameterMatrix: function(R1: Double; R2: Double): Double; stdcall;
function LGLSLShaderSetParameterMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterMatrix(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GLSLShaderSetParameterInvMatrix: function(R1: Double; R2: Double): Double; stdcall;
function LGLSLShaderSetParameterInvMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterInvMatrix(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GLSLShaderSetParameterShadowTexture: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LGLSLShaderSetParameterShadowTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterShadowTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GLSLShaderSetParameterShadowMatrix: function(R1: Double; R2: Double): Double; stdcall;
function LGLSLShaderSetParameterShadowMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterShadowMatrix(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GLSLShaderSetParameterFBOColorTexture: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LGLSLShaderSetParameterFBOColorTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterFBOColorTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GLSLShaderSetParameterFBODepthTexture: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LGLSLShaderSetParameterFBODepthTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterFBODepthTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GLSLShaderSetParameterViewMatrix: function(R1: Double): Double; stdcall;
function LGLSLShaderSetParameterViewMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterViewMatrix(lua_tonumber(L,1)));
  Result:=1;
end;
var GLSLShaderSetParameterInvViewMatrix: function(R1: Double): Double; stdcall;
function LGLSLShaderSetParameterInvViewMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterInvViewMatrix(lua_tonumber(L,1)));
  Result:=1;
end;
var GLSLShaderSetParameterHasTextureEx: function(R1: Double; R2: Double): Double; stdcall;
function LGLSLShaderSetParameterHasTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GLSLShaderSetParameterHasTextureEx(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXManagerCreate: function(): Double; stdcall;
function LThorFXManagerCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXManagerCreate());
  Result:=1;
end;
var ThorFXCreate: function(R1: Double; R2: Double): Double; stdcall;
function LThorFXCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXSetColor: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LThorFXSetColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXSetColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var ThorFXEnableCore: function(R1: Double; R2: Double): Double; stdcall;
function LThorFXEnableCore(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXEnableCore(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXEnableGlow: function(R1: Double; R2: Double): Double; stdcall;
function LThorFXEnableGlow(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXEnableGlow(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXSetMaxParticles: function(R1: Double; R2: Double): Double; stdcall;
function LThorFXSetMaxParticles(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXSetMaxParticles(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXSetGlowSize: function(R1: Double; R2: Double): Double; stdcall;
function LThorFXSetGlowSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXSetGlowSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXSetVibrate: function(R1: Double; R2: Double): Double; stdcall;
function LThorFXSetVibrate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXSetVibrate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXSetWildness: function(R1: Double; R2: Double): Double; stdcall;
function LThorFXSetWildness(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXSetWildness(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ThorFXSetTarget: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LThorFXSetTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ThorFXSetTarget(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var FireFXManagerCreate: function(): Double; stdcall;
function LFireFXManagerCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXManagerCreate());
  Result:=1;
end;
var FireFXCreate: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetColor: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LFireFXSetColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FireFXSetMaxParticles: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetMaxParticles(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetMaxParticles(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetParticleSize: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetParticleSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetParticleSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetDensity: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetDensity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetDensity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetEvaporation: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetEvaporation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetEvaporation(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetCrown: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetCrown(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetCrown(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetLife: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetLife(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetLife(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetBurst: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetBurst(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetBurst(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXSetRadius: function(R1: Double; R2: Double): Double; stdcall;
function LFireFXSetRadius(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXSetRadius(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FireFXExplosion: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LFireFXExplosion(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FireFXExplosion(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var LensflareCreate: function(R1: Double): Double; stdcall;
function LLensflareCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var LensflareSetSize: function(R1: Double; R2: Double): Double; stdcall;
function LLensflareSetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LensflareSetSeed: function(R1: Double; R2: Double): Double; stdcall;
function LLensflareSetSeed(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetSeed(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LensflareSetSqueeze: function(R1: Double; R2: Double): Double; stdcall;
function LLensflareSetSqueeze(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetSqueeze(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LensflareSetStreaks: function(R1: Double; R2: Double): Double; stdcall;
function LLensflareSetStreaks(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetStreaks(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LensflareSetStreakWidth: function(R1: Double; R2: Double): Double; stdcall;
function LLensflareSetStreakWidth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetStreakWidth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LensflareSetSecs: function(R1: Double; R2: Double): Double; stdcall;
function LLensflareSetSecs(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetSecs(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LensflareSetResolution: function(R1: Double; R2: Double): Double; stdcall;
function LLensflareSetResolution(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetResolution(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LensflareSetElements: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LLensflareSetElements(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetElements(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var LensflareSetGradients: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LLensflareSetGradients(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LensflareSetGradients(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var SkydomeCreate: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LSkydomeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SkydomeSetOptions: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LSkydomeSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SkydomeSetDeepColor: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetDeepColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetDeepColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeSetHazeColor: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetHazeColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetHazeColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeSetNightColor: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetNightColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetNightColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeSetSkyColor: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetSkyColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetSkyColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeSetSunDawnColor: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetSunDawnColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetSunDawnColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeSetSunZenithColor: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetSunZenithColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetSunZenithColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeSetSunElevation: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetSunElevation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetSunElevation(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeSetTurbidity: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeSetTurbidity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeSetTurbidity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkydomeAddRandomStars: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LSkydomeAddRandomStars(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeAddRandomStars(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SkydomeAddStar: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LSkydomeAddStar(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeAddStar(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SkydomeClearStars: function(R1: Double): Double; stdcall;
function LSkydomeClearStars(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeClearStars(lua_tonumber(L,1)));
  Result:=1;
end;
var SkydomeTwinkleStars: function(R1: Double; R2: Double): Double; stdcall;
function LSkydomeTwinkleStars(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkydomeTwinkleStars(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterCreate: function(R1: Double): Double; stdcall;
function LWaterCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var WaterCreateRandomRipple: function(R1: Double): Double; stdcall;
function LWaterCreateRandomRipple(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterCreateRandomRipple(lua_tonumber(L,1)));
  Result:=1;
end;
var WaterCreateRippleAtGridPosition: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LWaterCreateRippleAtGridPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterCreateRippleAtGridPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var WaterCreateRippleAtWorldPosition: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LWaterCreateRippleAtWorldPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterCreateRippleAtWorldPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var WaterCreateRippleAtObjectPosition: function(R1: Double; R2: Double): Double; stdcall;
function LWaterCreateRippleAtObjectPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterCreateRippleAtObjectPosition(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterSetMask: function(R1: Double; S2: PChar): Double; stdcall;
function LWaterSetMask(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetMask(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var WaterSetActive: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetActive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetActive(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterReset: function(R1: Double): Double; stdcall;
function LWaterReset(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterReset(lua_tonumber(L,1)));
  Result:=1;
end;
var WaterSetRainTimeInterval: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetRainTimeInterval(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetRainTimeInterval(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterSetRainForce: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetRainForce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetRainForce(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterSetViscosity: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetViscosity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetViscosity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterSetElastic: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetElastic(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetElastic(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterSetResolution: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetResolution(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetResolution(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterSetLinearWaveHeight: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetLinearWaveHeight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetLinearWaveHeight(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var WaterSetLinearWaveFrequency: function(R1: Double; R2: Double): Double; stdcall;
function LWaterSetLinearWaveFrequency(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,WaterSetLinearWaveFrequency(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BlurCreate: function(R1: Double; R2: Double): Double; stdcall;
function LBlurCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BlurCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BlurSetPreset: function(R1: Double; R2: Double): Double; stdcall;
function LBlurSetPreset(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BlurSetPreset(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BlurSetOptions: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LBlurSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BlurSetOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var BlurSetResolution: function(R1: Double; R2: Double): Double; stdcall;
function LBlurSetResolution(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BlurSetResolution(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BlurSetColor: function(R1: Double; R2: Double): Double; stdcall;
function LBlurSetColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BlurSetColor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var BlurSetBlendingMode: function(R1: Double; R2: Double): Double; stdcall;
function LBlurSetBlendingMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BlurSetBlendingMode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SkyboxCreate: function(R1: Double): Double; stdcall;
function LSkyboxCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkyboxCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var SkyboxSetMaterial: function(R1: Double; R2: Double; S3: PChar): Double; stdcall;
function LSkyboxSetMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkyboxSetMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var SkyboxSetClouds: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LSkyboxSetClouds(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkyboxSetClouds(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SkyboxSetStyle: function(R1: Double; R2: Double): Double; stdcall;
function LSkyboxSetStyle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SkyboxSetStyle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LinesCreate: function(R1: Double): Double; stdcall;
function LLinesCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var LinesAddNode: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LLinesAddNode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesAddNode(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var LinesDeleteNode: function(R1: Double; R2: Double): Double; stdcall;
function LLinesDeleteNode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesDeleteNode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LinesSetColors: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LLinesSetColors(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesSetColors(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var LinesSetSize: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LLinesSetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesSetSize(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var LinesSetSplineMode: function(R1: Double; R2: Double): Double; stdcall;
function LLinesSetSplineMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesSetSplineMode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LinesSetNodesAspect: function(R1: Double; R2: Double): Double; stdcall;
function LLinesSetNodesAspect(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesSetNodesAspect(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var LinesSetDivision: function(R1: Double; R2: Double): Double; stdcall;
function LLinesSetDivision(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LinesSetDivision(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeCreate: function(R1: Double): Double; stdcall;
function LTreeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var TreeSetMaterials: function(R1: Double; S2: PChar; S3: PChar; S4: PChar): Double; stdcall;
function LTreeSetMaterials(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetMaterials(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var TreeSetBranchFacets: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetBranchFacets(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetBranchFacets(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeBuildMesh: function(R1: Double; R2: Double): Double; stdcall;
function LTreeBuildMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeBuildMesh(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetBranchNoise: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetBranchNoise(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetBranchNoise(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetBranchAngle: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetBranchAngle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetBranchAngle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetBranchSize: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetBranchSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetBranchSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetBranchRadius: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetBranchRadius(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetBranchRadius(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetBranchTwist: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetBranchTwist(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetBranchTwist(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetDepth: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetDepth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetDepth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetLeafSize: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetLeafSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetLeafSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetLeafThreshold: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetLeafThreshold(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetLeafThreshold(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TreeSetSeed: function(R1: Double; R2: Double): Double; stdcall;
function LTreeSetSeed(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TreeSetSeed(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailCreate: function(R1: Double; R2: Double): Double; stdcall;
function LTrailCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailSetObject: function(R1: Double; R2: Double): Double; stdcall;
function LTrailSetObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailSetAlpha: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LTrailSetAlpha(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetAlpha(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var TrailSetLimits: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LTrailSetLimits(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetLimits(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var TrailSetMinDistance: function(R1: Double; R2: Double): Double; stdcall;
function LTrailSetMinDistance(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetMinDistance(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailSetUVScale: function(R1: Double; R2: Double): Double; stdcall;
function LTrailSetUVScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetUVScale(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailSetMarkStyle: function(R1: Double; R2: Double): Double; stdcall;
function LTrailSetMarkStyle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetMarkStyle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailSetMarkWidth: function(R1: Double; R2: Double): Double; stdcall;
function LTrailSetMarkWidth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetMarkWidth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailSetEnabled: function(R1: Double; R2: Double): Double; stdcall;
function LTrailSetEnabled(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailSetEnabled(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TrailClearMarks: function(R1: Double): Double; stdcall;
function LTrailClearMarks(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TrailClearMarks(lua_tonumber(L,1)));
  Result:=1;
end;
var ShadowplaneCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double): Double; stdcall;
function LShadowplaneCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowplaneCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9)));
  Result:=1;
end;
var ShadowplaneSetLight: function(R1: Double; R2: Double): Double; stdcall;
function LShadowplaneSetLight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowplaneSetLight(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowplaneSetObject: function(R1: Double; R2: Double): Double; stdcall;
function LShadowplaneSetObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowplaneSetObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowplaneSetOptions: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LShadowplaneSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowplaneSetOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ShadowvolumeCreate: function(R1: Double): Double; stdcall;
function LShadowvolumeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var ShadowvolumeSetActive: function(R1: Double; R2: Double): Double; stdcall;
function LShadowvolumeSetActive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeSetActive(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowvolumeAddLight: function(R1: Double; R2: Double): Double; stdcall;
function LShadowvolumeAddLight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeAddLight(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowvolumeRemoveLight: function(R1: Double; R2: Double): Double; stdcall;
function LShadowvolumeRemoveLight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeRemoveLight(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowvolumeAddOccluder: function(R1: Double; R2: Double): Double; stdcall;
function LShadowvolumeAddOccluder(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeAddOccluder(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowvolumeRemoveOccluder: function(R1: Double; R2: Double): Double; stdcall;
function LShadowvolumeRemoveOccluder(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeRemoveOccluder(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowvolumeSetDarkeningColor: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LShadowvolumeSetDarkeningColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeSetDarkeningColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ShadowvolumeSetMode: function(R1: Double; R2: Double): Double; stdcall;
function LShadowvolumeSetMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeSetMode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowvolumeSetOptions: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LShadowvolumeSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowvolumeSetOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var NavigatorCreate: function(): Double; stdcall;
function LNavigatorCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorCreate());
  Result:=1;
end;
var NavigatorSetObject: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorSetObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorSetObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorSetUseVirtualUp: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorSetUseVirtualUp(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorSetUseVirtualUp(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorSetVirtualUp: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LNavigatorSetVirtualUp(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorSetVirtualUp(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var NavigatorTurnHorizontal: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorTurnHorizontal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorTurnHorizontal(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorTurnVertical: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorTurnVertical(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorTurnVertical(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorMoveForward: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorMoveForward(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorMoveForward(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorStrafeHorizontal: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorStrafeHorizontal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorStrafeHorizontal(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorStrafeVertical: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorStrafeVertical(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorStrafeVertical(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorStraighten: function(R1: Double): Double; stdcall;
function LNavigatorStraighten(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorStraighten(lua_tonumber(L,1)));
  Result:=1;
end;
var NavigatorFlyForward: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorFlyForward(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorFlyForward(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorMoveUpWhenMovingForward: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorMoveUpWhenMovingForward(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorMoveUpWhenMovingForward(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorInvertHorizontalWhenUpsideDown: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorInvertHorizontalWhenUpsideDown(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorInvertHorizontalWhenUpsideDown(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorSetAngleLock: function(R1: Double; R2: Double): Double; stdcall;
function LNavigatorSetAngleLock(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorSetAngleLock(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var NavigatorSetAngles: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LNavigatorSetAngles(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NavigatorSetAngles(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var MovementCreate: function(R1: Double): Double; stdcall;
function LMovementCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var MovementStart: function(R1: Double): Double; stdcall;
function LMovementStart(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementStart(lua_tonumber(L,1)));
  Result:=1;
end;
var MovementStop: function(R1: Double): Double; stdcall;
function LMovementStop(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementStop(lua_tonumber(L,1)));
  Result:=1;
end;
var MovementAutoStartNextPath: function(R1: Double; R2: Double): Double; stdcall;
function LMovementAutoStartNextPath(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementAutoStartNextPath(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MovementAddPath: function(R1: Double): Double; stdcall;
function LMovementAddPath(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementAddPath(lua_tonumber(L,1)));
  Result:=1;
end;
var MovementSetActivePath: function(R1: Double; R2: Double): Double; stdcall;
function LMovementSetActivePath(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementSetActivePath(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MovementPathSetSplineMode: function(R1: Double; R2: Double): Double; stdcall;
function LMovementPathSetSplineMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementPathSetSplineMode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MovementPathAddNode: function(R1: Double): Double; stdcall;
function LMovementPathAddNode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementPathAddNode(lua_tonumber(L,1)));
  Result:=1;
end;
var MovementPathNodeSetPosition: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LMovementPathNodeSetPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementPathNodeSetPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var MovementPathNodeSetRotation: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LMovementPathNodeSetRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementPathNodeSetRotation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var MovementPathNodeSetSpeed: function(R1: Double; R2: Double): Double; stdcall;
function LMovementPathNodeSetSpeed(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MovementPathNodeSetSpeed(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceManagerCreate: function(): Double; stdcall;
function LDceManagerCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerCreate());
  Result:=1;
end;
var DceManagerStep: function(R1: Double; R2: Double): Double; stdcall;
function LDceManagerStep(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerStep(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceManagerSetGravity: function(R1: Double; R2: Double): Double; stdcall;
function LDceManagerSetGravity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerSetGravity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceManagerSetWorldDirection: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceManagerSetWorldDirection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerSetWorldDirection(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceManagerSetWorldScale: function(R1: Double; R2: Double): Double; stdcall;
function LDceManagerSetWorldScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerSetWorldScale(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceManagerSetMovementScale: function(R1: Double; R2: Double): Double; stdcall;
function LDceManagerSetMovementScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerSetMovementScale(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceManagerSetLayers: function(R1: Double; R2: Double): Double; stdcall;
function LDceManagerSetLayers(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerSetLayers(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceManagerSetManualStep: function(R1: Double; R2: Double): Double; stdcall;
function LDceManagerSetManualStep(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceManagerSetManualStep(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicSetManager: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetManager(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetManager(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicSetActive: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetActive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetActive(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicIsActive: function(R1: Double): Double; stdcall;
function LDceDynamicIsActive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicIsActive(lua_tonumber(L,1)));
  Result:=1;
end;
var DceDynamicSetUseGravity: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetUseGravity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetUseGravity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicSetLayer: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetLayer(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetLayer(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicGetLayer: function(R1: Double): Double; stdcall;
function LDceDynamicGetLayer(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicGetLayer(lua_tonumber(L,1)));
  Result:=1;
end;
var DceDynamicSetSolid: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetSolid(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetSolid(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicSetFriction: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetFriction(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetFriction(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicSetBounce: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetBounce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetBounce(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicSetSize: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceDynamicSetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetSize(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceDynamicSetSlideOrBounce: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetSlideOrBounce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetSlideOrBounce(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicApplyAcceleration: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceDynamicApplyAcceleration(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicApplyAcceleration(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceDynamicApplyAbsAcceleration: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceDynamicApplyAbsAcceleration(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicApplyAbsAcceleration(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceDynamicStopAcceleration: function(R1: Double): Double; stdcall;
function LDceDynamicStopAcceleration(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicStopAcceleration(lua_tonumber(L,1)));
  Result:=1;
end;
var DceDynamicStopAbsAcceleration: function(R1: Double): Double; stdcall;
function LDceDynamicStopAbsAcceleration(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicStopAbsAcceleration(lua_tonumber(L,1)));
  Result:=1;
end;
var DceDynamicJump: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LDceDynamicJump(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicJump(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var DceDynamicMove: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LDceDynamicMove(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicMove(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var DceDynamicMoveTo: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LDceDynamicMoveTo(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicMoveTo(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var DceDynamicSetVelocity: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceDynamicSetVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetVelocity(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceDynamicGetVelocity: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicGetVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicGetVelocity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicSetAbsVelocity: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceDynamicSetAbsVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetAbsVelocity(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceDynamicGetAbsVelocity: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicGetAbsVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicGetAbsVelocity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceDynamicApplyImpulse: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceDynamicApplyImpulse(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicApplyImpulse(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceDynamicApplyAbsImpulse: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceDynamicApplyAbsImpulse(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicApplyAbsImpulse(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceDynamicInGround: function(R1: Double): Double; stdcall;
function LDceDynamicInGround(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicInGround(lua_tonumber(L,1)));
  Result:=1;
end;
var DceDynamicSetMaxRecursionDepth: function(R1: Double; R2: Double): Double; stdcall;
function LDceDynamicSetMaxRecursionDepth(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceDynamicSetMaxRecursionDepth(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceStaticSetManager: function(R1: Double; R2: Double): Double; stdcall;
function LDceStaticSetManager(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetManager(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceStaticSetActive: function(R1: Double; R2: Double): Double; stdcall;
function LDceStaticSetActive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetActive(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceStaticSetShape: function(R1: Double; R2: Double): Double; stdcall;
function LDceStaticSetShape(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetShape(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceStaticSetLayer: function(R1: Double; R2: Double): Double; stdcall;
function LDceStaticSetLayer(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetLayer(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceStaticSetSize: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LDceStaticSetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetSize(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DceStaticSetSolid: function(R1: Double; R2: Double): Double; stdcall;
function LDceStaticSetSolid(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetSolid(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceStaticSetFriction: function(R1: Double; R2: Double): Double; stdcall;
function LDceStaticSetFriction(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetFriction(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DceStaticSetBounceFactor: function(R1: Double; R2: Double): Double; stdcall;
function LDceStaticSetBounceFactor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DceStaticSetBounceFactor(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsManagerCreate: function(): Double; stdcall;
function LFpsManagerCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsManagerCreate());
  Result:=1;
end;
var FpsManagerSetNavigator: function(R1: Double; R2: Double): Double; stdcall;
function LFpsManagerSetNavigator(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsManagerSetNavigator(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsManagerSetMovementScale: function(R1: Double; R2: Double): Double; stdcall;
function LFpsManagerSetMovementScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsManagerSetMovementScale(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsManagerAddMap: function(R1: Double; R2: Double): Double; stdcall;
function LFpsManagerAddMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsManagerAddMap(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsManagerRemoveMap: function(R1: Double; R2: Double): Double; stdcall;
function LFpsManagerRemoveMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsManagerRemoveMap(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsManagerMapSetCollisionGroup: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LFpsManagerMapSetCollisionGroup(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsManagerMapSetCollisionGroup(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FpsSetManager: function(R1: Double; R2: Double): Double; stdcall;
function LFpsSetManager(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsSetManager(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsSetCollisionGroup: function(R1: Double; R2: Double): Double; stdcall;
function LFpsSetCollisionGroup(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsSetCollisionGroup(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsSetSphereRadius: function(R1: Double; R2: Double): Double; stdcall;
function LFpsSetSphereRadius(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsSetSphereRadius(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsSetGravity: function(R1: Double; R2: Double): Double; stdcall;
function LFpsSetGravity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsSetGravity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsMove: function(R1: Double; R2: Double): Double; stdcall;
function LFpsMove(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsMove(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsStrafe: function(R1: Double; R2: Double): Double; stdcall;
function LFpsStrafe(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsStrafe(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsLift: function(R1: Double; R2: Double): Double; stdcall;
function LFpsLift(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsLift(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FpsGetVelocity: function(R1: Double; R2: Double): Double; stdcall;
function LFpsGetVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FpsGetVelocity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OctreeCreate: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOctreeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OctreeCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var QuadtreeCreate: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LQuadtreeCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,QuadtreeCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var PartitionDestroy: function(R1: Double): Double; stdcall;
function LPartitionDestroy(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionDestroy(lua_tonumber(L,1)));
  Result:=1;
end;
var PartitionAddLeaf: function(R1: Double; R2: Double): Double; stdcall;
function LPartitionAddLeaf(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionAddLeaf(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PartitionLeafChanged: function(R1: Double; R2: Double): Double; stdcall;
function LPartitionLeafChanged(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionLeafChanged(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PartitionQueryFrustum: function(R1: Double; R2: Double): Double; stdcall;
function LPartitionQueryFrustum(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionQueryFrustum(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PartitionQueryLeaf: function(R1: Double; R2: Double): Double; stdcall;
function LPartitionQueryLeaf(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionQueryLeaf(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PartitionQueryAABB: function(R1: Double; R2: Double): Double; stdcall;
function LPartitionQueryAABB(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionQueryAABB(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PartitionQueryBSphere: function(R1: Double; R2: Double): Double; stdcall;
function LPartitionQueryBSphere(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionQueryBSphere(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PartitionGetNodeTests: function(R1: Double): Double; stdcall;
function LPartitionGetNodeTests(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionGetNodeTests(lua_tonumber(L,1)));
  Result:=1;
end;
var PartitionGetNodeCount: function(R1: Double): Double; stdcall;
function LPartitionGetNodeCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionGetNodeCount(lua_tonumber(L,1)));
  Result:=1;
end;
var PartitionGetResult: function(R1: Double; R2: Double): Double; stdcall;
function LPartitionGetResult(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionGetResult(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var PartitionGetResultCount: function(R1: Double): Double; stdcall;
function LPartitionGetResultCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionGetResultCount(lua_tonumber(L,1)));
  Result:=1;
end;
var PartitionResultShow: function(R1: Double): Double; stdcall;
function LPartitionResultShow(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionResultShow(lua_tonumber(L,1)));
  Result:=1;
end;
var PartitionResultHide: function(R1: Double): Double; stdcall;
function LPartitionResultHide(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PartitionResultHide(lua_tonumber(L,1)));
  Result:=1;
end;
var MirrorCreate: function(R1: Double; R2: Double): Double; stdcall;
function LMirrorCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MirrorCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MirrorSetObject: function(R1: Double; R2: Double): Double; stdcall;
function LMirrorSetObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MirrorSetObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MirrorSetOptions: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LMirrorSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MirrorSetOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var MirrorSetShape: function(R1: Double; R2: Double): Double; stdcall;
function LMirrorSetShape(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MirrorSetShape(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MirrorSetDiskOptions: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LMirrorSetDiskOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MirrorSetDiskOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ProxyObjectCreate: function(R1: Double; R2: Double): Double; stdcall;
function LProxyObjectCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ProxyObjectCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ProxyObjectSetOptions: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LProxyObjectSetOptions(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ProxyObjectSetOptions(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ProxyObjectSetTarget: function(R1: Double; R2: Double): Double; stdcall;
function LProxyObjectSetTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ProxyObjectSetTarget(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MultiProxyObjectCreate: function(R1: Double): Double; stdcall;
function LMultiProxyObjectCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MultiProxyObjectCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var MultiProxyObjectAddTarget: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LMultiProxyObjectAddTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MultiProxyObjectAddTarget(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var GridCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LGridCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GridCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var GridSetLineStyle: function(R1: Double; R2: Double): Double; stdcall;
function LGridSetLineStyle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GridSetLineStyle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GridSetLineSmoothing: function(R1: Double; R2: Double): Double; stdcall;
function LGridSetLineSmoothing(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GridSetLineSmoothing(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GridSetParts: function(R1: Double; R2: Double): Double; stdcall;
function LGridSetParts(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GridSetParts(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GridSetColor: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LGridSetColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GridSetColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GridSetSize: function(R1: Double; R2: Double): Double; stdcall;
function LGridSetSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GridSetSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GridSetPattern: function(R1: Double; R2: Double): Double; stdcall;
function LGridSetPattern(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GridSetPattern(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MemoryViewerCreate: function(R1: Double; R2: Double): Double; stdcall;
function LMemoryViewerCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MemoryViewerCreate(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MemoryViewerSetCamera: function(R1: Double; R2: Double): Double; stdcall;
function LMemoryViewerSetCamera(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MemoryViewerSetCamera(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var MemoryViewerRender: function(R1: Double): Double; stdcall;
function LMemoryViewerRender(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MemoryViewerRender(lua_tonumber(L,1)));
  Result:=1;
end;
var MemoryViewerCopyToTexture: function(R1: Double; S2: PChar): Double; stdcall;
function LMemoryViewerCopyToTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MemoryViewerCopyToTexture(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var MemoryViewerSetViewport: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LMemoryViewerSetViewport(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,MemoryViewerSetViewport(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var FBOCreate: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LFBOCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FBOCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var FBOSetCamera: function(R1: Double; R2: Double): Double; stdcall;
function LFBOSetCamera(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FBOSetCamera(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FBORenderObject: function(R1: Double; R2: Double): Double; stdcall;
function LFBORenderObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FBORenderObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FBORenderObjectEx: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LFBORenderObjectEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FBORenderObjectEx(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var FBOSetViewer: function(R1: Double; R2: Double): Double; stdcall;
function LFBOSetViewer(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FBOSetViewer(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var FBOSetOverrideMaterial: function(R1: Double; R2: Double; S3: PChar): Double; stdcall;
function LFBOSetOverrideMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FBOSetOverrideMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var FBOSetColorTextureFormat: function(R1: Double; R2: Double): Double; stdcall;
function LFBOSetColorTextureFormat(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,FBOSetColorTextureFormat(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowMapCreate: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LShadowMapCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ShadowMapSetCamera: function(R1: Double; R2: Double): Double; stdcall;
function LShadowMapSetCamera(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapSetCamera(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowMapSetCaster: function(R1: Double; R2: Double): Double; stdcall;
function LShadowMapSetCaster(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapSetCaster(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowMapSetProjectionSize: function(R1: Double; R2: Double): Double; stdcall;
function LShadowMapSetProjectionSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapSetProjectionSize(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowMapSetZScale: function(R1: Double; R2: Double): Double; stdcall;
function LShadowMapSetZScale(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapSetZScale(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ShadowMapSetZClippingPlanes: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LShadowMapSetZClippingPlanes(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapSetZClippingPlanes(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ShadowMapRender: function(R1: Double): Double; stdcall;
function LShadowMapRender(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapRender(lua_tonumber(L,1)));
  Result:=1;
end;
var ShadowMapSetFBO: function(R1: Double; R2: Double): Double; stdcall;
function LShadowMapSetFBO(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ShadowMapSetFBO(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeManagerCreate: function(): Double; stdcall;
function LOdeManagerCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerCreate());
  Result:=1;
end;
var OdeManagerDestroy: function(): Double; stdcall;
function LOdeManagerDestroy(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerDestroy());
  Result:=1;
end;
var OdeManagerStep: function(R1: Double): Double; stdcall;
function LOdeManagerStep(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerStep(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeManagerGetNumContactJoints: function(): Double; stdcall;
function LOdeManagerGetNumContactJoints(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerGetNumContactJoints());
  Result:=1;
end;
var OdeManagerSetGravity: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeManagerSetGravity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerSetGravity(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeManagerSetSolver: function(R1: Double): Double; stdcall;
function LOdeManagerSetSolver(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerSetSolver(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeManagerSetIterations: function(R1: Double): Double; stdcall;
function LOdeManagerSetIterations(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerSetIterations(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeManagerSetMaxContacts: function(R1: Double): Double; stdcall;
function LOdeManagerSetMaxContacts(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerSetMaxContacts(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeManagerSetVisible: function(R1: Double): Double; stdcall;
function LOdeManagerSetVisible(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerSetVisible(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeManagerSetGeomColor: function(R1: Double): Double; stdcall;
function LOdeManagerSetGeomColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeManagerSetGeomColor(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeWorldSetAutoDisableFlag: function(R1: Double): Double; stdcall;
function LOdeWorldSetAutoDisableFlag(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeWorldSetAutoDisableFlag(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeWorldSetAutoDisableLinearThreshold: function(R1: Double): Double; stdcall;
function LOdeWorldSetAutoDisableLinearThreshold(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeWorldSetAutoDisableLinearThreshold(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeWorldSetAutoDisableAngularThreshold: function(R1: Double): Double; stdcall;
function LOdeWorldSetAutoDisableAngularThreshold(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeWorldSetAutoDisableAngularThreshold(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeWorldSetAutoDisableSteps: function(R1: Double): Double; stdcall;
function LOdeWorldSetAutoDisableSteps(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeWorldSetAutoDisableSteps(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeWorldSetAutoDisableTime: function(R1: Double): Double; stdcall;
function LOdeWorldSetAutoDisableTime(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeWorldSetAutoDisableTime(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeStaticCreate: function(R1: Double): Double; stdcall;
function LOdeStaticCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeStaticCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeDynamicCreate: function(R1: Double): Double; stdcall;
function LOdeDynamicCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeTerrainCreate: function(R1: Double): Double; stdcall;
function LOdeTerrainCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeTerrainCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeDynamicCalculateMass: function(R1: Double): Double; stdcall;
function LOdeDynamicCalculateMass(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicCalculateMass(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeDynamicCalibrateCenterOfMass: function(R1: Double): Double; stdcall;
function LOdeDynamicCalibrateCenterOfMass(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicCalibrateCenterOfMass(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeDynamicAlignObject: function(R1: Double): Double; stdcall;
function LOdeDynamicAlignObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAlignObject(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeDynamicEnable: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicEnable(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicEnable(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicSetAutoDisableFlag: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicSetAutoDisableFlag(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetAutoDisableFlag(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicSetAutoDisableLinearThreshold: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicSetAutoDisableLinearThreshold(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetAutoDisableLinearThreshold(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicSetAutoDisableAngularThreshold: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicSetAutoDisableAngularThreshold(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetAutoDisableAngularThreshold(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicSetAutoDisableSteps: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicSetAutoDisableSteps(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetAutoDisableSteps(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicSetAutoDisableTime: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicSetAutoDisableTime(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetAutoDisableTime(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicAddForce: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeDynamicAddForce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddForce(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeDynamicAddForceAtPos: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LOdeDynamicAddForceAtPos(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddForceAtPos(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var OdeDynamicAddForceAtRelPos: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LOdeDynamicAddForceAtRelPos(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddForceAtRelPos(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var OdeDynamicAddRelForce: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeDynamicAddRelForce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddRelForce(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeDynamicAddRelForceAtPos: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LOdeDynamicAddRelForceAtPos(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddRelForceAtPos(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var OdeDynamicAddRelForceAtRelPos: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LOdeDynamicAddRelForceAtRelPos(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddRelForceAtRelPos(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var OdeDynamicAddTorque: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeDynamicAddTorque(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddTorque(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeDynamicAddRelTorque: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeDynamicAddRelTorque(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicAddRelTorque(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeDynamicSetVelocity: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeDynamicSetVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetVelocity(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeDynamicSetAngularVelocity: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeDynamicSetAngularVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetAngularVelocity(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeDynamicGetVelocity: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicGetVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicGetVelocity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicGetAngularVelocity: function(R1: Double; R2: Double): Double; stdcall;
function LOdeDynamicGetAngularVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicGetAngularVelocity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeDynamicSetPosition: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeDynamicSetPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeDynamicSetRotationQuaternion: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LOdeDynamicSetRotationQuaternion(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicSetRotationQuaternion(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var OdeDynamicGetContactCount: function(R1: Double): Double; stdcall;
function LOdeDynamicGetContactCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeDynamicGetContactCount(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeStaticGetContactCount: function(R1: Double): Double; stdcall;
function LOdeStaticGetContactCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeStaticGetContactCount(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeAddPlane: function(R1: Double): Double; stdcall;
function LOdeAddPlane(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddPlane(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeAddBox: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LOdeAddBox(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddBox(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var OdeAddSphere: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LOdeAddSphere(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddSphere(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var OdeAddCylinder: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LOdeAddCylinder(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddCylinder(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var OdeAddCone: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LOdeAddCone(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddCone(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var OdeAddCapsule: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LOdeAddCapsule(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddCapsule(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var OdeAddTriMesh: function(R1: Double; R2: Double): Double; stdcall;
function LOdeAddTriMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddTriMesh(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeElementSetDensity: function(R1: Double; R2: Double): Double; stdcall;
function LOdeElementSetDensity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeElementSetDensity(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceEnableRollingFrictionCoeff: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceEnableRollingFrictionCoeff(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceEnableRollingFrictionCoeff(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetRollingFrictionCoeff: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetRollingFrictionCoeff(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetRollingFrictionCoeff(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetMode: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; stdcall;
function LOdeSurfaceSetMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetMode(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var OdeSurfaceSetMu: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetMu(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetMu(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetMu2: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetMu2(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetMu2(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
//var OdeSurfaceSetMu2: function(R1: Double; R2: Double): Double; stdcall;
//function LOdeSurfaceSetMu2(L: Plua_State): Integer; cdecl;
//begin
//  lua_pushnumber(L,OdeSurfaceSetMu2(lua_tonumber(L,1),lua_tonumber(L,2)));
//  Result:=1;
//end;
var OdeSurfaceSetBounce: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetBounce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetBounce(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetBounceVel: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetBounceVel(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetBounceVel(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetSoftERP: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetSoftERP(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetSoftERP(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetSoftCFM: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetSoftCFM(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetSoftCFM(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetMotion1: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetMotion1(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetMotion1(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetMotion2: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetMotion2(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetMotion2(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetSlip1: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetSlip1(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetSlip1(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeSurfaceSetSlip2: function(R1: Double; R2: Double): Double; stdcall;
function LOdeSurfaceSetSlip2(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeSurfaceSetSlip2(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeAddJointBall: function(): Double; stdcall;
function LOdeAddJointBall(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddJointBall());
  Result:=1;
end;
var OdeAddJointFixed: function(): Double; stdcall;
function LOdeAddJointFixed(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddJointFixed());
  Result:=1;
end;
var OdeAddJointHinge: function(): Double; stdcall;
function LOdeAddJointHinge(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddJointHinge());
  Result:=1;
end;
var OdeAddJointHinge2: function(): Double; stdcall;
function LOdeAddJointHinge2(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddJointHinge2());
  Result:=1;
end;
var OdeAddJointSlider: function(): Double; stdcall;
function LOdeAddJointSlider(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddJointSlider());
  Result:=1;
end;
var OdeAddJointUniversal: function(): Double; stdcall;
function LOdeAddJointUniversal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeAddJointUniversal());
  Result:=1;
end;
var OdeJointSetObjects: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetObjects(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetObjects(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointEnable: function(R1: Double; R2: Double): Double; stdcall;
function LOdeJointEnable(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointEnable(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeJointInitialize: function(R1: Double): Double; stdcall;
function LOdeJointInitialize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointInitialize(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeJointSetAnchor: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeJointSetAnchor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetAnchor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeJointSetAnchorAtObject: function(R1: Double; R2: Double): Double; stdcall;
function LOdeJointSetAnchorAtObject(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetAnchorAtObject(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeJointSetAxis1: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeJointSetAxis1(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetAxis1(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeJointSetAxis2: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeJointSetAxis2(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetAxis2(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeJointSetBounce: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetBounce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetBounce(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetCFM: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetCFM(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetCFM(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetFMax: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetFMax(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetFMax(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetFudgeFactor: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetFudgeFactor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetFudgeFactor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetHiStop: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetHiStop(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetHiStop(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetLoStop: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetLoStop(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetLoStop(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetStopCFM: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetStopCFM(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetStopCFM(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetStopERP: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetStopERP(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetStopERP(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeJointSetVel: function(R1: Double; R2: Double; R3: Double): Double; stdcall;
function LOdeJointSetVel(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeJointSetVel(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var OdeRagdollCreate: function(R1: Double): Double; stdcall;
function LOdeRagdollCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeRagdollHingeJointCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; stdcall;
function LOdeRagdollHingeJointCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollHingeJointCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var OdeRagdollUniversalJointCreate: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; stdcall;
function LOdeRagdollUniversalJointCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollUniversalJointCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var OdeRagdollDummyJointCreate: function(): Double; stdcall;
function LOdeRagdollDummyJointCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollDummyJointCreate());
  Result:=1;
end;
var OdeRagdollBoneCreate: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; stdcall;
function LOdeRagdollBoneCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollBoneCreate(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var OdeRagdollBuild: function(R1: Double): Double; stdcall;
function LOdeRagdollBuild(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollBuild(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeRagdollEnable: function(R1: Double; R2: Double): Double; stdcall;
function LOdeRagdollEnable(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollEnable(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeRagdollUpdate: function(R1: Double): Double; stdcall;
function LOdeRagdollUpdate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeRagdollUpdate(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeVehicleCreate: function(R1: Double): Double; stdcall;
function LOdeVehicleCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeVehicleCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeVehicleSetScene: function(R1: Double; R2: Double): Double; stdcall;
function LOdeVehicleSetScene(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeVehicleSetScene(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeVehicleSetForwardForce: function(R1: Double; R2: Double): Double; stdcall;
function LOdeVehicleSetForwardForce(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeVehicleSetForwardForce(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var OdeVehicleAddSuspension: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; stdcall;
function LOdeVehicleAddSuspension(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeVehicleAddSuspension(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var OdeVehicleSuspensionGetWheel: function(R1: Double): Double; stdcall;
function LOdeVehicleSuspensionGetWheel(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeVehicleSuspensionGetWheel(lua_tonumber(L,1)));
  Result:=1;
end;
var OdeVehicleSuspensionSetSteeringAngle: function(R1: Double; R2: Double): Double; stdcall;
function LOdeVehicleSuspensionSetSteeringAngle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OdeVehicleSuspensionSetSteeringAngle(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TextRead: function(S1: PChar): PChar; stdcall;
function LTextRead(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,TextRead(lua_tostring(L,1)));
  Result:=1;
end;
var TextConvertANSIToUTF8: function(S1: PChar): PChar; stdcall;
function LTextConvertANSIToUTF8(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,TextConvertANSIToUTF8(lua_tostring(L,1)));
  Result:=1;
end;
var ObjectHashCreate: function(): Double; stdcall;
function LObjectHashCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHashCreate());
  Result:=1;
end;
var ObjectHashSetItem: function(R1: Double; S2: PChar; R3: Double): Double; stdcall;
function LObjectHashSetItem(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHashSetItem(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ObjectHashGetItem: function(R1: Double; S2: PChar): Double; stdcall;
function LObjectHashGetItem(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHashGetItem(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ObjectHashDeleteItem: function(R1: Double; S2: PChar): Double; stdcall;
function LObjectHashDeleteItem(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHashDeleteItem(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ObjectHashGetItemCount: function(R1: Double): Double; stdcall;
function LObjectHashGetItemCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHashGetItemCount(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectHashClear: function(R1: Double): Double; stdcall;
function LObjectHashClear(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHashClear(lua_tonumber(L,1)));
  Result:=1;
end;
var ObjectHashDestroy: function(R1: Double): Double; stdcall;
function LObjectHashDestroy(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ObjectHashDestroy(lua_tonumber(L,1)));
  Result:=1;
end;
var ClipPlaneCreate: function(R1: Double): Double; stdcall;
function LClipPlaneCreate(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ClipPlaneCreate(lua_tonumber(L,1)));
  Result:=1;
end;
var ClipPlaneEnable: function(R1: Double; R2: Double): Double; stdcall;
function LClipPlaneEnable(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ClipPlaneEnable(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ClipPlaneSetPlane: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; stdcall;
function LClipPlaneSetPlane(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ClipPlaneSetPlane(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;

function LInit_xtreme3d(L: Plua_State): Integer; cdecl;
var dll: THandle;
begin
  SetConst('osInherited',0);
  SetConst('osNone',1);
  SetConst('osRenderFarthestFirst',2);
  SetConst('osRenderBlendedLast',3);
  SetConst('osRenderNearestFirst',4);
  SetConst('vcNone',0);
  SetConst('vcInherited',1);
  SetConst('vcObjectBased',2);
  SetConst('vcHierarchical',3);
  SetConst('vsmSync',0);
  SetConst('vsmNoSync',1);
  SetConst('cimNone',0);
  SetConst('cimPosition',1);
  SetConst('cimOrientation',2);
  SetConst('csPerspective',0);
  SetConst('csOrthogonal',1);
  SetConst('csOrtho2D',2);
  SetConst('csInfinitePerspective',4);
  SetConst('lsSpot',0);
  SetConst('lsOmni',1);
  SetConst('lsParallel',2);
  SetConst('aamNone',0);
  SetConst('aamPlayOnce',1);
  SetConst('aamLoop',2);
  SetConst('aamBounceForward',3);
  SetConst('aamBounceBackward',4);
  SetConst('aamLoopBackward',5);
  SetConst('scNoOverlap',0);
  SetConst('scContainsFully',1);
  SetConst('scContainsPartially',2);
  SetConst('pmFill',0);
  SetConst('pmLines',1);
  SetConst('pmPoints',2);
  SetConst('tmmUser',0);
  SetConst('tmmObjectLinear',1);
  SetConst('tmmEyeLinear',2);
  SetConst('tmmSphere',3);
  SetConst('tmmCubeMapReflection',4);
  SetConst('tmmCubeMapNormal',5);
  SetConst('tmmCubeMapLight0',6);
  SetConst('tmmCubeMapCamera',7);
  SetConst('tiaDefault',0);
  SetConst('tiaAlphaFromIntensity',1);
  SetConst('tiaSuperBlackTransparent',2);
  SetConst('tiaLuminance',3);
  SetConst('tiaLuminanceSqrt',4);
  SetConst('tiaOpaque',5);
  SetConst('tiaTopLeftPointColorTransparent',6);
  SetConst('tiaInverseLuminance',7);
  SetConst('tiaInverseLuminanceSqrt',8);
  SetConst('tmDecal',0);
  SetConst('tmModulate',1);
  SetConst('tmBlend',2);
  SetConst('tmReplace',3);
  SetConst('bmOpaque',0);
  SetConst('bmTransparency',1);
  SetConst('bmAdditive',2);
  SetConst('bmAlphaTest50',3);
  SetConst('bmAlphaTest100',4);
  SetConst('bmModulate',5);
  SetConst('miNearest',0);
  SetConst('miLinear',1);
  SetConst('miNearestMipmapNearest',2);
  SetConst('miLinearMipmapNearest',3);
  SetConst('miNearestMipmapLinear',4);
  SetConst('miLinearMipmapLinear',5);
  SetConst('maNearest',0);
  SetConst('maLinear',1);
  SetConst('fcBufferDefault',0);
  SetConst('fcCull',1);
  SetConst('fcNoCull',2);
  SetConst('tfDefault',0);
  SetConst('tfRGB',1);
  SetConst('tfRGBA',2);
  SetConst('tfRGB16',3);
  SetConst('tfRGBA16',4);
  SetConst('tfAlpha',5);
  SetConst('tfLuminance',6);
  SetConst('tfLuminanceAlpha',7);
  SetConst('tfIntensity',8);
  SetConst('tfNormalMap',9);
  SetConst('tfRGBAFloat16',10);
  SetConst('tfRGBAFloat32',11);
  SetConst('tcDefault',0);
  SetConst('tcNone',1);
  SetConst('tcStandard',2);
  SetConst('tcHighQuality',3);
  SetConst('tcHighSpeed',4);
  SetConst('tfIsotropic',0);
  SetConst('tfAnisotropic',1);
  SetConst('pNone',0);
  SetConst('pGlossy',1);
  SetConst('pBeastView',2);
  SetConst('pOceanDepth',3);
  SetConst('pDream',4);
  SetConst('pOverBlur',5);
  SetConst('sbmTop',0);
  SetConst('sbmBottom',1);
  SetConst('sbmLeft',2);
  SetConst('sbmRight',3);
  SetConst('sbmFront',4);
  SetConst('sbmBack',5);
  SetConst('sbmClouds',6);
  SetConst('sbsFull',0);
  SetConst('sbsTopHalf',1);
  SetConst('sbsBottomHalf',2);
  SetConst('sbTopTwoThirds',3);
  SetConst('sbsTopHalfClamped',4);
  SetConst('lsmLines',0);
  SetConst('lsmCubicSpline',1);
  SetConst('lsmBezierSpline',2);
  SetConst('lsmNURBSCurve',3);
  SetConst('lsmSegments',4);
  SetConst('lnaInvisible',0);
  SetConst('lnaAxes',1);
  SetConst('lnaCube',2);
  SetConst('lnaDodecahedron',3);
  SetConst('msUp',0);
  SetConst('msDirection',1);
  SetConst('msFaceCamera',2);
  SetConst('svmAccurate',0);
  SetConst('svmDarkening',1);
  SetConst('svmOff',2);
  SetConst('osmStep',0);
  SetConst('osmStepFast',1);
  SetConst('osmQuickStep',2);
  SetConst('hrsFullGeometry',0);
  SetConst('hrsTesselated',1);
  SetConst('totTesselateAlways',0);
  SetConst('totTesselateIfVisible',1);
  SetConst('aaDefault',0);
  SetConst('aaNone',1);
  SetConst('aa2x',2);
  SetConst('aa2xHQ',3);
  SetConst('aa4x',4);
  SetConst('aa4xHQ',5);
  SetConst('afpNone',0);
  SetConst('afpLinear',1);
  SetConst('ccsDCEStandard',0);
  SetConst('ccsCollisionStandard',1);
  SetConst('ccsHybrid',2);
  SetConst('csEllipsoid',0);
  SetConst('csBox',1);
  SetConst('csFreeform',2);
  SetConst('csTerrain',3);
  SetConst('cmFineCulling',0);
  SetConst('cmGrossCulling',1);
  SetConst('glsSegments',0);
  SetConst('glsLine',1);
  SetConst('gpXY',0);
  SetConst('gpYZ',1);
  SetConst('gpXZ',2);
  SetConst('gpXYZ',3);

  dll:=GetModuleHandle(lua_tostring(L,1));
  if dll = 0 then dll:=LoadLibrary(lua_tostring(L,1));

  @EngineCreate:=getProcAddress(dll,'EngineCreate');
  @EngineDestroy:=getProcAddress(dll,'EngineDestroy');
  @EngineSetObjectsSorting:=getProcAddress(dll,'EngineSetObjectsSorting');
  @EngineSetCulling:=getProcAddress(dll,'EngineSetCulling');
  @SetPakArchive:=getProcAddress(dll,'SetPakArchive');
  @Update:=getProcAddress(dll,'Update');
  @TrisRendered:=getProcAddress(dll,'TrisRendered');
  @ViewerCreate:=getProcAddress(dll,'ViewerCreate');
  @ViewerSetCamera:=getProcAddress(dll,'ViewerSetCamera');
  @ViewerEnableVSync:=getProcAddress(dll,'ViewerEnableVSync');
  @ViewerSetAutoRender:=getProcAddress(dll,'ViewerSetAutoRender');
  @ViewerRender:=getProcAddress(dll,'ViewerRender');
  @ViewerRenderToFile:=getProcAddress(dll,'ViewerRenderToFile');
  @ViewerRenderEx:=getProcAddress(dll,'ViewerRenderEx');
  @ViewerResize:=getProcAddress(dll,'ViewerResize');
  @ViewerSetVisible:=getProcAddress(dll,'ViewerSetVisible');
  @ViewerGetPixelColor:=getProcAddress(dll,'ViewerGetPixelColor');
  @ViewerGetPixelDepth:=getProcAddress(dll,'ViewerGetPixelDepth');
  @ViewerSetLighting:=getProcAddress(dll,'ViewerSetLighting');
  @ViewerSetBackgroundColor:=getProcAddress(dll,'ViewerSetBackgroundColor');
  @ViewerSetAmbientColor:=getProcAddress(dll,'ViewerSetAmbientColor');
  @ViewerEnableFog:=getProcAddress(dll,'ViewerEnableFog');
  @ViewerSetFogColor:=getProcAddress(dll,'ViewerSetFogColor');
  @ViewerSetFogDistance:=getProcAddress(dll,'ViewerSetFogDistance');
  @ViewerScreenToWorld:=getProcAddress(dll,'ViewerScreenToWorld');
  @ViewerWorldToScreen:=getProcAddress(dll,'ViewerWorldToScreen');
  @ViewerCopyToTexture:=getProcAddress(dll,'ViewerCopyToTexture');
  @ViewerGetFramesPerSecond:=getProcAddress(dll,'ViewerGetFramesPerSecond');
  @ViewerGetPickedObject:=getProcAddress(dll,'ViewerGetPickedObject');
  @ViewerGetPickedObjectsList:=getProcAddress(dll,'ViewerGetPickedObjectsList');
  @ViewerScreenToVector:=getProcAddress(dll,'ViewerScreenToVector');
  @ViewerVectorToScreen:=getProcAddress(dll,'ViewerVectorToScreen');
  @ViewerPixelToDistance:=getProcAddress(dll,'ViewerPixelToDistance');
  @ViewerSetAntiAliasing:=getProcAddress(dll,'ViewerSetAntiAliasing');
  @ViewerGetVBOSupported:=getProcAddress(dll,'ViewerGetVBOSupported');
  @ViewerGetGLSLSupported:=getProcAddress(dll,'ViewerGetGLSLSupported');
  @ViewerSetOverrideMaterial:=getProcAddress(dll,'ViewerSetOverrideMaterial');
  @ViewerGetSize:=getProcAddress(dll,'ViewerGetSize');
  @ViewerGetPosition:=getProcAddress(dll,'ViewerGetPosition');
  @ViewerIsOpenGLExtensionSupported:=getProcAddress(dll,'ViewerIsOpenGLExtensionSupported');
  @DummycubeCreate:=getProcAddress(dll,'DummycubeCreate');
  @DummycubeAmalgamate:=getProcAddress(dll,'DummycubeAmalgamate');
  @DummycubeSetCameraMode:=getProcAddress(dll,'DummycubeSetCameraMode');
  @DummycubeSetVisible:=getProcAddress(dll,'DummycubeSetVisible');
  @DummycubeSetEdgeColor:=getProcAddress(dll,'DummycubeSetEdgeColor');
  @DummycubeSetCubeSize:=getProcAddress(dll,'DummycubeSetCubeSize');
  @CameraCreate:=getProcAddress(dll,'CameraCreate');
  @CameraSetStyle:=getProcAddress(dll,'CameraSetStyle');
  @CameraSetFocal:=getProcAddress(dll,'CameraSetFocal');
  @CameraSetSceneScale:=getProcAddress(dll,'CameraSetSceneScale');
  @CameraScaleScene:=getProcAddress(dll,'CameraScaleScene');
  @CameraSetViewDepth:=getProcAddress(dll,'CameraSetViewDepth');
  @CameraSetTargetObject:=getProcAddress(dll,'CameraSetTargetObject');
  @CameraMoveAroundTarget:=getProcAddress(dll,'CameraMoveAroundTarget');
  @CameraSetDistanceToTarget:=getProcAddress(dll,'CameraSetDistanceToTarget');
  @CameraGetDistanceToTarget:=getProcAddress(dll,'CameraGetDistanceToTarget');
  @CameraCopyToTexture:=getProcAddress(dll,'CameraCopyToTexture');
  @CameraGetNearPlane:=getProcAddress(dll,'CameraGetNearPlane');
  @CameraSetNearPlaneBias:=getProcAddress(dll,'CameraSetNearPlaneBias');
  @CameraAbsoluteVectorToTarget:=getProcAddress(dll,'CameraAbsoluteVectorToTarget');
  @CameraAbsoluteRightVectorToTarget:=getProcAddress(dll,'CameraAbsoluteRightVectorToTarget');
  @CameraAbsoluteUpVectorToTarget:=getProcAddress(dll,'CameraAbsoluteUpVectorToTarget');
  @CameraZoomAll:=getProcAddress(dll,'CameraZoomAll');
  @CameraScreenDeltaToVector:=getProcAddress(dll,'CameraScreenDeltaToVector');
  @CameraScreenDeltaToVectorXY:=getProcAddress(dll,'CameraScreenDeltaToVectorXY');
  @CameraScreenDeltaToVectorXZ:=getProcAddress(dll,'CameraScreenDeltaToVectorXZ');
  @CameraScreenDeltaToVectorYZ:=getProcAddress(dll,'CameraScreenDeltaToVectorYZ');
  @CameraAbsoluteEyeSpaceVector:=getProcAddress(dll,'CameraAbsoluteEyeSpaceVector');
  @CameraSetAutoLeveling:=getProcAddress(dll,'CameraSetAutoLeveling');
  @CameraMoveInEyeSpace:=getProcAddress(dll,'CameraMoveInEyeSpace');
  @CameraMoveTargetInEyeSpace:=getProcAddress(dll,'CameraMoveTargetInEyeSpace');
  @CameraPointInFront:=getProcAddress(dll,'CameraPointInFront');
  @CameraGetFieldOfView:=getProcAddress(dll,'CameraGetFieldOfView');
  @LightCreate:=getProcAddress(dll,'LightCreate');
  @LightSetAmbientColor:=getProcAddress(dll,'LightSetAmbientColor');
  @LightSetDiffuseColor:=getProcAddress(dll,'LightSetDiffuseColor');
  @LightSetSpecularColor:=getProcAddress(dll,'LightSetSpecularColor');
  @LightSetAttenuation:=getProcAddress(dll,'LightSetAttenuation');
  @LightSetShining:=getProcAddress(dll,'LightSetShining');
  @LightSetSpotCutoff:=getProcAddress(dll,'LightSetSpotCutoff');
  @LightSetSpotExponent:=getProcAddress(dll,'LightSetSpotExponent');
  @LightSetSpotDirection:=getProcAddress(dll,'LightSetSpotDirection');
  @LightSetStyle:=getProcAddress(dll,'LightSetStyle');
  @BmpfontCreate:=getProcAddress(dll,'BmpfontCreate');
  @BmpfontLoad:=getProcAddress(dll,'BmpfontLoad');
  @WindowsBitmapfontCreate:=getProcAddress(dll,'WindowsBitmapfontCreate');
  @HUDTextCreate:=getProcAddress(dll,'HUDTextCreate');
  @HUDTextSetRotation:=getProcAddress(dll,'HUDTextSetRotation');
  @HUDTextSetFont:=getProcAddress(dll,'HUDTextSetFont');
  @HUDTextSetColor:=getProcAddress(dll,'HUDTextSetColor');
  @HUDTextSetText:=getProcAddress(dll,'HUDTextSetText');
  @FlatTextCreate:=getProcAddress(dll,'FlatTextCreate');
  @FlatTextSetFont:=getProcAddress(dll,'FlatTextSetFont');
  @FlatTextSetColor:=getProcAddress(dll,'FlatTextSetColor');
  @FlatTextSetText:=getProcAddress(dll,'FlatTextSetText');
  @SpaceTextCreate:=getProcAddress(dll,'SpaceTextCreate');
  @SpaceTextSetExtrusion:=getProcAddress(dll,'SpaceTextSetExtrusion');
  @SpaceTextSetFont:=getProcAddress(dll,'SpaceTextSetFont');
  @SpaceTextSetText:=getProcAddress(dll,'SpaceTextSetText');
  @TTFontCreate:=getProcAddress(dll,'TTFontCreate');
  @TTFontSetLineGap:=getProcAddress(dll,'TTFontSetLineGap');
  @HUDSpriteCreate:=getProcAddress(dll,'HUDSpriteCreate');
  @SpriteCreate:=getProcAddress(dll,'SpriteCreate');
  @SpriteSetSize:=getProcAddress(dll,'SpriteSetSize');
  @SpriteScale:=getProcAddress(dll,'SpriteScale');
  @SpriteSetRotation:=getProcAddress(dll,'SpriteSetRotation');
  @SpriteRotate:=getProcAddress(dll,'SpriteRotate');
  @SpriteMirror:=getProcAddress(dll,'SpriteMirror');
  @SpriteNoZWrite:=getProcAddress(dll,'SpriteNoZWrite');
  @SpriteSetBounds:=getProcAddress(dll,'SpriteSetBounds');
  @SpriteSetBoundsUV:=getProcAddress(dll,'SpriteSetBoundsUV');
  @SpriteSetOrigin:=getProcAddress(dll,'SpriteSetOrigin');
  @SpriteCreateEx:=getProcAddress(dll,'SpriteCreateEx');
  @HUDSpriteCreateEx:=getProcAddress(dll,'HUDSpriteCreateEx');
  @HUDShapeRectangleCreate:=getProcAddress(dll,'HUDShapeRectangleCreate');
  @HUDShapeCircleCreate:=getProcAddress(dll,'HUDShapeCircleCreate');
  @HUDShapeLineCreate:=getProcAddress(dll,'HUDShapeLineCreate');
  @HUDShapeMeshCreate:=getProcAddress(dll,'HUDShapeMeshCreate');
  @HUDShapeCircleSetRadius:=getProcAddress(dll,'HUDShapeCircleSetRadius');
  @HUDShapeCircleSetSlices:=getProcAddress(dll,'HUDShapeCircleSetSlices');
  @HUDShapeCircleSetAngles:=getProcAddress(dll,'HUDShapeCircleSetAngles');
  @HUDShapeLineSetPoints:=getProcAddress(dll,'HUDShapeLineSetPoints');
  @HUDShapeLineSetWidth:=getProcAddress(dll,'HUDShapeLineSetWidth');
  @HUDShapeSetRotation:=getProcAddress(dll,'HUDShapeSetRotation');
  @HUDShapeRotate:=getProcAddress(dll,'HUDShapeRotate');
  @HUDShapeSetOrigin:=getProcAddress(dll,'HUDShapeSetOrigin');
  @HUDShapeSetSize:=getProcAddress(dll,'HUDShapeSetSize');
  @HUDShapeScale:=getProcAddress(dll,'HUDShapeScale');
  @HUDShapeSetColor:=getProcAddress(dll,'HUDShapeSetColor');
  @HUDShapeMeshAddVertex:=getProcAddress(dll,'HUDShapeMeshAddVertex');
  @HUDShapeMeshAddTriangle:=getProcAddress(dll,'HUDShapeMeshAddTriangle');
  @HUDShapeMeshSetVertex:=getProcAddress(dll,'HUDShapeMeshSetVertex');
  @HUDShapeMeshSetTexCoord:=getProcAddress(dll,'HUDShapeMeshSetTexCoord');
  @PlaneCreate:=getProcAddress(dll,'PlaneCreate');
  @CubeCreate:=getProcAddress(dll,'CubeCreate');
  @CubeSetNormalDirection:=getProcAddress(dll,'CubeSetNormalDirection');
  @SphereCreate:=getProcAddress(dll,'SphereCreate');
  @SphereSetAngleLimits:=getProcAddress(dll,'SphereSetAngleLimits');
  @CylinderCreate:=getProcAddress(dll,'CylinderCreate');
  @ConeCreate:=getProcAddress(dll,'ConeCreate');
  @AnnulusCreate:=getProcAddress(dll,'AnnulusCreate');
  @TorusCreate:=getProcAddress(dll,'TorusCreate');
  @DiskCreate:=getProcAddress(dll,'DiskCreate');
  @FrustrumCreate:=getProcAddress(dll,'FrustrumCreate');
  @DodecahedronCreate:=getProcAddress(dll,'DodecahedronCreate');
  @IcosahedronCreate:=getProcAddress(dll,'IcosahedronCreate');
  @TeapotCreate:=getProcAddress(dll,'TeapotCreate');
  @ActorCreate:=getProcAddress(dll,'ActorCreate');
  @ActorCopy:=getProcAddress(dll,'ActorCopy');
  @ActorSetAnimationRange:=getProcAddress(dll,'ActorSetAnimationRange');
  @ActorGetCurrentFrame:=getProcAddress(dll,'ActorGetCurrentFrame');
  @ActorSwitchToAnimation:=getProcAddress(dll,'ActorSwitchToAnimation');
  @ActorSwitchToAnimationName:=getProcAddress(dll,'ActorSwitchToAnimationName');
  @ActorSynchronize:=getProcAddress(dll,'ActorSynchronize');
  @ActorSetInterval:=getProcAddress(dll,'ActorSetInterval');
  @ActorSetAnimationMode:=getProcAddress(dll,'ActorSetAnimationMode');
  @ActorSetFrameInterpolation:=getProcAddress(dll,'ActorSetFrameInterpolation');
  @ActorAddObject:=getProcAddress(dll,'ActorAddObject');
  @ActorGetCurrentAnimation:=getProcAddress(dll,'ActorGetCurrentAnimation');
  @ActorGetFrameCount:=getProcAddress(dll,'ActorGetFrameCount');
  @ActorGetBoneCount:=getProcAddress(dll,'ActorGetBoneCount');
  @ActorGetBoneByName:=getProcAddress(dll,'ActorGetBoneByName');
  @ActorGetBoneRotation:=getProcAddress(dll,'ActorGetBoneRotation');
  @ActorGetBonePosition:=getProcAddress(dll,'ActorGetBonePosition');
  @ActorBoneExportMatrix:=getProcAddress(dll,'ActorBoneExportMatrix');
  @ActorMakeSkeletalTranslationStatic:=getProcAddress(dll,'ActorMakeSkeletalTranslationStatic');
  @ActorMakeSkeletalRotationDelta:=getProcAddress(dll,'ActorMakeSkeletalRotationDelta');
  @ActorShowSkeleton:=getProcAddress(dll,'ActorShowSkeleton');
  @AnimationBlenderCreate:=getProcAddress(dll,'AnimationBlenderCreate');
  @AnimationBlenderSetActor:=getProcAddress(dll,'AnimationBlenderSetActor');
  @AnimationBlenderSetAnimation:=getProcAddress(dll,'AnimationBlenderSetAnimation');
  @AnimationBlenderSetRatio:=getProcAddress(dll,'AnimationBlenderSetRatio');
  @ActorLoadQ3TagList:=getProcAddress(dll,'ActorLoadQ3TagList');
  @ActorLoadQ3Animations:=getProcAddress(dll,'ActorLoadQ3Animations');
  @ActorQ3TagExportMatrix:=getProcAddress(dll,'ActorQ3TagExportMatrix');
  @ActorMeshObjectsCount:=getProcAddress(dll,'ActorMeshObjectsCount');
  @ActorFaceGroupsCount:=getProcAddress(dll,'ActorFaceGroupsCount');
  @ActorFaceGroupGetMaterialName:=getProcAddress(dll,'ActorFaceGroupGetMaterialName');
  @ActorFaceGroupSetMaterial:=getProcAddress(dll,'ActorFaceGroupSetMaterial');
  @FreeformCreate:=getProcAddress(dll,'FreeformCreate');
  @FreeformCreateEmpty:=getProcAddress(dll,'FreeformCreateEmpty');
  @FreeformAddMesh:=getProcAddress(dll,'FreeformAddMesh');
  @FreeformMeshAddVertex:=getProcAddress(dll,'FreeformMeshAddVertex');
  @FreeformMeshAddNormal:=getProcAddress(dll,'FreeformMeshAddNormal');
  @FreeformMeshAddTexCoord:=getProcAddress(dll,'FreeformMeshAddTexCoord');
  @FreeformMeshAddSecondTexCoord:=getProcAddress(dll,'FreeformMeshAddSecondTexCoord');
  @FreeformMeshAddTangent:=getProcAddress(dll,'FreeformMeshAddTangent');
  @FreeformMeshAddBinormal:=getProcAddress(dll,'FreeformMeshAddBinormal');
  @FreeformMeshVerticesCount:=getProcAddress(dll,'FreeformMeshVerticesCount');
  @FreeformMeshTriangleCount:=getProcAddress(dll,'FreeformMeshTriangleCount');
  @FreeformMeshObjectsCount:=getProcAddress(dll,'FreeformMeshObjectsCount');
  @FreeformMeshAddFaceGroup:=getProcAddress(dll,'FreeformMeshAddFaceGroup');
  @FreeformMeshFaceGroupAddTriangle:=getProcAddress(dll,'FreeformMeshFaceGroupAddTriangle');
  @FreeformMeshFaceGroupTriangleCount:=getProcAddress(dll,'FreeformMeshFaceGroupTriangleCount');
  @FreeformMeshFaceGroupSetMaterial:=getProcAddress(dll,'FreeformMeshFaceGroupSetMaterial');
  @FreeformMeshFaceGroupGetMaterial:=getProcAddress(dll,'FreeformMeshFaceGroupGetMaterial');
  @FreeformMeshFaceGroupsCount:=getProcAddress(dll,'FreeformMeshFaceGroupsCount');
  @FreeformMeshGenNormals:=getProcAddress(dll,'FreeformMeshGenNormals');
  @FreeformMeshGenTangents:=getProcAddress(dll,'FreeformMeshGenTangents');
  @FreeformMeshSetVisible:=getProcAddress(dll,'FreeformMeshSetVisible');
  @FreeformMeshSetSecondCoords:=getProcAddress(dll,'FreeformMeshSetSecondCoords');
  @FreeformMeshGetVertex:=getProcAddress(dll,'FreeformMeshGetVertex');
  @FreeformMeshGetNormal:=getProcAddress(dll,'FreeformMeshGetNormal');
  @FreeformMeshGetTexCoord:=getProcAddress(dll,'FreeformMeshGetTexCoord');
  @FreeformMeshGetSecondTexCoord:=getProcAddress(dll,'FreeformMeshGetSecondTexCoord');
  @FreeformMeshGetTangent:=getProcAddress(dll,'FreeformMeshGetTangent');
  @FreeformMeshGetBinormal:=getProcAddress(dll,'FreeformMeshGetBinormal');
  @FreeformMeshFaceGroupGetIndex:=getProcAddress(dll,'FreeformMeshFaceGroupGetIndex');
  @FreeformMeshSetVertex:=getProcAddress(dll,'FreeformMeshSetVertex');
  @FreeformMeshSetNormal:=getProcAddress(dll,'FreeformMeshSetNormal');
  @FreeformMeshSetTexCoord:=getProcAddress(dll,'FreeformMeshSetTexCoord');
  @FreeformMeshSetSecondTexCoord:=getProcAddress(dll,'FreeformMeshSetSecondTexCoord');
  @FreeformMeshSetTangent:=getProcAddress(dll,'FreeformMeshSetTangent');
  @FreeformMeshSetBinormal:=getProcAddress(dll,'FreeformMeshSetBinormal');
  @FreeformMeshFaceGroupSetIndex:=getProcAddress(dll,'FreeformMeshFaceGroupSetIndex');
  @FreeformMeshTranslate:=getProcAddress(dll,'FreeformMeshTranslate');
  @FreeformMeshRotate:=getProcAddress(dll,'FreeformMeshRotate');
  @FreeformMeshScale:=getProcAddress(dll,'FreeformMeshScale');
  @FreeformMeshSetMaterial:=getProcAddress(dll,'FreeformMeshSetMaterial');
  @FreeformUseMeshMaterials:=getProcAddress(dll,'FreeformUseMeshMaterials');
  @FreeformPointInMesh:=getProcAddress(dll,'FreeformPointInMesh');
  @FreeformSphereSweepIntersect:=getProcAddress(dll,'FreeformSphereSweepIntersect');
  @FreeformToFreeforms:=getProcAddress(dll,'FreeformToFreeforms');
  @FreeformSave:=getProcAddress(dll,'FreeformSave');
  @FreeformGenTangents:=getProcAddress(dll,'FreeformGenTangents');
  @FreeformBuildOctree:=getProcAddress(dll,'FreeformBuildOctree');
  @FreeformCreateExplosionFX:=getProcAddress(dll,'FreeformCreateExplosionFX');
  @FreeformExplosionFXReset:=getProcAddress(dll,'FreeformExplosionFXReset');
  @FreeformExplosionFXEnable:=getProcAddress(dll,'FreeformExplosionFXEnable');
  @FreeformExplosionFXSetSpeed:=getProcAddress(dll,'FreeformExplosionFXSetSpeed');
  @BmpHDSCreate:=getProcAddress(dll,'BmpHDSCreate');
  @BmpHDSSetInfiniteWarp:=getProcAddress(dll,'BmpHDSSetInfiniteWarp');
  @BmpHDSInvert:=getProcAddress(dll,'BmpHDSInvert');
  @TerrainCreate:=getProcAddress(dll,'TerrainCreate');
  @TerrainSetHeightData:=getProcAddress(dll,'TerrainSetHeightData');
  @TerrainSetTileSize:=getProcAddress(dll,'TerrainSetTileSize');
  @TerrainSetTilesPerTexture:=getProcAddress(dll,'TerrainSetTilesPerTexture');
  @TerrainSetQualityDistance:=getProcAddress(dll,'TerrainSetQualityDistance');
  @TerrainSetQualityStyle:=getProcAddress(dll,'TerrainSetQualityStyle');
  @TerrainSetMaxCLodTriangles:=getProcAddress(dll,'TerrainSetMaxCLodTriangles');
  @TerrainSetCLodPrecision:=getProcAddress(dll,'TerrainSetCLodPrecision');
  @TerrainSetOcclusionFrameSkip:=getProcAddress(dll,'TerrainSetOcclusionFrameSkip');
  @TerrainSetOcclusionTesselate:=getProcAddress(dll,'TerrainSetOcclusionTesselate');
  @TerrainGetHeightAtObjectPosition:=getProcAddress(dll,'TerrainGetHeightAtObjectPosition');
  @TerrainGetLastTriCount:=getProcAddress(dll,'TerrainGetLastTriCount');
  @ObjectHide:=getProcAddress(dll,'ObjectHide');
  @ObjectShow:=getProcAddress(dll,'ObjectShow');
  @ObjectIsVisible:=getProcAddress(dll,'ObjectIsVisible');
  @ObjectCopy:=getProcAddress(dll,'ObjectCopy');
  @ObjectDestroy:=getProcAddress(dll,'ObjectDestroy');
  @ObjectDestroyChildren:=getProcAddress(dll,'ObjectDestroyChildren');
  @ObjectSetPosition:=getProcAddress(dll,'ObjectSetPosition');
  @ObjectGetPosition:=getProcAddress(dll,'ObjectGetPosition');
  @ObjectGetAbsolutePosition:=getProcAddress(dll,'ObjectGetAbsolutePosition');
  @ObjectSetPositionOfObject:=getProcAddress(dll,'ObjectSetPositionOfObject');
  @ObjectAlignWithObject:=getProcAddress(dll,'ObjectAlignWithObject');
  @ObjectSetPositionX:=getProcAddress(dll,'ObjectSetPositionX');
  @ObjectSetPositionY:=getProcAddress(dll,'ObjectSetPositionY');
  @ObjectSetPositionZ:=getProcAddress(dll,'ObjectSetPositionZ');
  @ObjectGetDirection:=getProcAddress(dll,'ObjectGetDirection');
  @ObjectGetAbsoluteDirection:=getProcAddress(dll,'ObjectGetAbsoluteDirection');
  @ObjectSetAbsolutePosition:=getProcAddress(dll,'ObjectSetAbsolutePosition');
  @ObjectGetPositionX:=getProcAddress(dll,'ObjectGetPositionX');
  @ObjectGetPositionY:=getProcAddress(dll,'ObjectGetPositionY');
  @ObjectGetPositionZ:=getProcAddress(dll,'ObjectGetPositionZ');
  @ObjectSetDirection:=getProcAddress(dll,'ObjectSetDirection');
  @ObjectSetAbsoluteDirection:=getProcAddress(dll,'ObjectSetAbsoluteDirection');
  @ObjectGetPitch:=getProcAddress(dll,'ObjectGetPitch');
  @ObjectGetTurn:=getProcAddress(dll,'ObjectGetTurn');
  @ObjectGetRoll:=getProcAddress(dll,'ObjectGetRoll');
  @ObjectSetRotation:=getProcAddress(dll,'ObjectSetRotation');
  @ObjectMove:=getProcAddress(dll,'ObjectMove');
  @ObjectLift:=getProcAddress(dll,'ObjectLift');
  @ObjectStrafe:=getProcAddress(dll,'ObjectStrafe');
  @ObjectTranslate:=getProcAddress(dll,'ObjectTranslate');
  @ObjectRotate:=getProcAddress(dll,'ObjectRotate');
  @ObjectScale:=getProcAddress(dll,'ObjectScale');
  @ObjectSetScale:=getProcAddress(dll,'ObjectSetScale');
  @ObjectSetUpVector:=getProcAddress(dll,'ObjectSetUpVector');
  @ObjectPointToObject:=getProcAddress(dll,'ObjectPointToObject');
  @ObjectShowAxes:=getProcAddress(dll,'ObjectShowAxes');
  @ObjectGetGroundHeight:=getProcAddress(dll,'ObjectGetGroundHeight');
  @ObjectSceneRaycast:=getProcAddress(dll,'ObjectSceneRaycast');
  @ObjectRaycast:=getProcAddress(dll,'ObjectRaycast');
  @ObjectGetCollisionPosition:=getProcAddress(dll,'ObjectGetCollisionPosition');
  @ObjectGetCollisionNormal:=getProcAddress(dll,'ObjectGetCollisionNormal');
  @ObjectSetMaterial:=getProcAddress(dll,'ObjectSetMaterial');
  @ObjectGetDistance:=getProcAddress(dll,'ObjectGetDistance');
  @ObjectCheckCubeVsCube:=getProcAddress(dll,'ObjectCheckCubeVsCube');
  @ObjectCheckSphereVsSphere:=getProcAddress(dll,'ObjectCheckSphereVsSphere');
  @ObjectCheckSphereVsCube:=getProcAddress(dll,'ObjectCheckSphereVsCube');
  @ObjectCheckCubeVsFace:=getProcAddress(dll,'ObjectCheckCubeVsFace');
  @ObjectCheckFaceVsFace:=getProcAddress(dll,'ObjectCheckFaceVsFace');
  @ObjectIsPointInObject:=getProcAddress(dll,'ObjectIsPointInObject');
  @ObjectSetCulling:=getProcAddress(dll,'ObjectSetCulling');
  @ObjectSetName:=getProcAddress(dll,'ObjectSetName');
  @ObjectGetName:=getProcAddress(dll,'ObjectGetName');
  @ObjectGetClassName:=getProcAddress(dll,'ObjectGetClassName');
  @ObjectSetTag:=getProcAddress(dll,'ObjectSetTag');
  @ObjectGetTag:=getProcAddress(dll,'ObjectGetTag');
  @ObjectGetParent:=getProcAddress(dll,'ObjectGetParent');
  @ObjectGetChildCount:=getProcAddress(dll,'ObjectGetChildCount');
  @ObjectGetChild:=getProcAddress(dll,'ObjectGetChild');
  @ObjectGetIndex:=getProcAddress(dll,'ObjectGetIndex');
  @ObjectFindChild:=getProcAddress(dll,'ObjectFindChild');
  @ObjectGetBoundingSphereRadius:=getProcAddress(dll,'ObjectGetBoundingSphereRadius');
  @ObjectGetAbsoluteUp:=getProcAddress(dll,'ObjectGetAbsoluteUp');
  @ObjectSetAbsoluteUp:=getProcAddress(dll,'ObjectSetAbsoluteUp');
  @ObjectGetAbsoluteRight:=getProcAddress(dll,'ObjectGetAbsoluteRight');
  @ObjectGetAbsoluteXVector:=getProcAddress(dll,'ObjectGetAbsoluteXVector');
  @ObjectGetAbsoluteYVector:=getProcAddress(dll,'ObjectGetAbsoluteYVector');
  @ObjectGetAbsoluteZVector:=getProcAddress(dll,'ObjectGetAbsoluteZVector');
  @ObjectGetRight:=getProcAddress(dll,'ObjectGetRight');
  @ObjectMoveChildUp:=getProcAddress(dll,'ObjectMoveChildUp');
  @ObjectMoveChildDown:=getProcAddress(dll,'ObjectMoveChildDown');
  @ObjectSetParent:=getProcAddress(dll,'ObjectSetParent');
  @ObjectRemoveChild:=getProcAddress(dll,'ObjectRemoveChild');
  @ObjectMoveObjectAround:=getProcAddress(dll,'ObjectMoveObjectAround');
  @ObjectPitch:=getProcAddress(dll,'ObjectPitch');
  @ObjectTurn:=getProcAddress(dll,'ObjectTurn');
  @ObjectRoll:=getProcAddress(dll,'ObjectRoll');
  @ObjectGetUp:=getProcAddress(dll,'ObjectGetUp');
  @ObjectRotateAbsolute:=getProcAddress(dll,'ObjectRotateAbsolute');
  @ObjectRotateAbsoluteVector:=getProcAddress(dll,'ObjectRotateAbsoluteVector');
  @ObjectSetMatrixColumn:=getProcAddress(dll,'ObjectSetMatrixColumn');
  @ObjectExportMatrix:=getProcAddress(dll,'ObjectExportMatrix');
  @ObjectExportAbsoluteMatrix:=getProcAddress(dll,'ObjectExportAbsoluteMatrix');
  @PolygonCreate:=getProcAddress(dll,'PolygonCreate');
  @PolygonAddVertex:=getProcAddress(dll,'PolygonAddVertex');
  @PolygonSetVertexPosition:=getProcAddress(dll,'PolygonSetVertexPosition');
  @PolygonDeleteVertex:=getProcAddress(dll,'PolygonDeleteVertex');
  @MaterialLibraryCreate:=getProcAddress(dll,'MaterialLibraryCreate');
  @MaterialLibraryActivate:=getProcAddress(dll,'MaterialLibraryActivate');
  @MaterialLibrarySetTexturePaths:=getProcAddress(dll,'MaterialLibrarySetTexturePaths');
  @MaterialLibraryClear:=getProcAddress(dll,'MaterialLibraryClear');
  @MaterialLibraryDeleteUnused:=getProcAddress(dll,'MaterialLibraryDeleteUnused');
  @MaterialLibraryHasMaterial:=getProcAddress(dll,'MaterialLibraryHasMaterial');
  @MaterialLibraryLoadScript:=getProcAddress(dll,'MaterialLibraryLoadScript');
  @MaterialCreate:=getProcAddress(dll,'MaterialCreate');
  @MaterialAddCubeMap:=getProcAddress(dll,'MaterialAddCubeMap');
  @MaterialCubeMapLoadImage:=getProcAddress(dll,'MaterialCubeMapLoadImage');
  @MaterialCubeMapGenerate:=getProcAddress(dll,'MaterialCubeMapGenerate');
  @MaterialCubeMapFromScene:=getProcAddress(dll,'MaterialCubeMapFromScene');
  @MaterialSetBlendingMode:=getProcAddress(dll,'MaterialSetBlendingMode');
  @MaterialSetOptions:=getProcAddress(dll,'MaterialSetOptions');
  @MaterialSetTextureMode:=getProcAddress(dll,'MaterialSetTextureMode');
  @MaterialSetTextureMappingMode:=getProcAddress(dll,'MaterialSetTextureMappingMode');
  @MaterialSetPolygonMode:=getProcAddress(dll,'MaterialSetPolygonMode');
  @MaterialSetTextureScale:=getProcAddress(dll,'MaterialSetTextureScale');
  @MaterialSetTextureOffset:=getProcAddress(dll,'MaterialSetTextureOffset');
  @MaterialSetTextureFilter:=getProcAddress(dll,'MaterialSetTextureFilter');
  @MaterialSetTextureImageAlpha:=getProcAddress(dll,'MaterialSetTextureImageAlpha');
  @MaterialEnableTexture:=getProcAddress(dll,'MaterialEnableTexture');
  @MaterialGetCount:=getProcAddress(dll,'MaterialGetCount');
  @MaterialGetName:=getProcAddress(dll,'MaterialGetName');
  @MaterialSetFaceCulling:=getProcAddress(dll,'MaterialSetFaceCulling');
  @MaterialSetTextureFormat:=getProcAddress(dll,'MaterialSetTextureFormat');
  @MaterialSetTextureCompression:=getProcAddress(dll,'MaterialSetTextureCompression');
  @MaterialTextureRequiredMemory:=getProcAddress(dll,'MaterialTextureRequiredMemory');
  @MaterialSetFilteringQuality:=getProcAddress(dll,'MaterialSetFilteringQuality');
  @MaterialAddTextureEx:=getProcAddress(dll,'MaterialAddTextureEx');
  @MaterialTextureExClear:=getProcAddress(dll,'MaterialTextureExClear');
  @MaterialTextureExDelete:=getProcAddress(dll,'MaterialTextureExDelete');
  @MaterialSetTexture:=getProcAddress(dll,'MaterialSetTexture');
  @MaterialSetSecondTexture:=getProcAddress(dll,'MaterialSetSecondTexture');
  @MaterialSetShininess:=getProcAddress(dll,'MaterialSetShininess');
  @MaterialSetAmbientColor:=getProcAddress(dll,'MaterialSetAmbientColor');
  @MaterialSetDiffuseColor:=getProcAddress(dll,'MaterialSetDiffuseColor');
  @MaterialSetSpecularColor:=getProcAddress(dll,'MaterialSetSpecularColor');
  @MaterialSetEmissionColor:=getProcAddress(dll,'MaterialSetEmissionColor');
  @MaterialSetShader:=getProcAddress(dll,'MaterialSetShader');
  @MaterialSaveTexture:=getProcAddress(dll,'MaterialSaveTexture');
  @MaterialNoiseCreate:=getProcAddress(dll,'MaterialNoiseCreate');
  @MaterialNoiseAnimate:=getProcAddress(dll,'MaterialNoiseAnimate');
  @MaterialNoiseSetDimensions:=getProcAddress(dll,'MaterialNoiseSetDimensions');
  @MaterialNoiseSetMinCut:=getProcAddress(dll,'MaterialNoiseSetMinCut');
  @MaterialNoiseSetSharpness:=getProcAddress(dll,'MaterialNoiseSetSharpness');
  @MaterialNoiseSetSeamless:=getProcAddress(dll,'MaterialNoiseSetSeamless');
  @MaterialNoiseRandomSeed:=getProcAddress(dll,'MaterialNoiseRandomSeed');
  @MaterialGenTexture:=getProcAddress(dll,'MaterialGenTexture');
  @MaterialSetTextureWrap:=getProcAddress(dll,'MaterialSetTextureWrap');
  @MaterialGetTextureWidth:=getProcAddress(dll,'MaterialGetTextureWidth');
  @MaterialGetTextureHeight:=getProcAddress(dll,'MaterialGetTextureHeight');
  @MaterialLoadTexture:=getProcAddress(dll,'MaterialLoadTexture');
  @MaterialLoadTextureEx:=getProcAddress(dll,'MaterialLoadTextureEx');
  @MaterialSetTextureEx:=getProcAddress(dll,'MaterialSetTextureEx');
  @MaterialGenTextureEx:=getProcAddress(dll,'MaterialGenTextureEx');
  @MaterialEnableTextureEx:=getProcAddress(dll,'MaterialEnableTextureEx');
  @MaterialHasTextureEx:=getProcAddress(dll,'MaterialHasTextureEx');
  @MaterialCullFrontFaces:=getProcAddress(dll,'MaterialCullFrontFaces');
  @MaterialSetZWrite:=getProcAddress(dll,'MaterialSetZWrite');
  @ShaderEnable:=getProcAddress(dll,'ShaderEnable');
  @PhongShaderCreate:=getProcAddress(dll,'PhongShaderCreate');
  @PhongShaderUseTexture:=getProcAddress(dll,'PhongShaderUseTexture');
  @PhongShaderSetMaxLights:=getProcAddress(dll,'PhongShaderSetMaxLights');
  @BumpShaderCreate:=getProcAddress(dll,'BumpShaderCreate');
  @BumpShaderSetDiffuseTexture:=getProcAddress(dll,'BumpShaderSetDiffuseTexture');
  @BumpShaderSetNormalTexture:=getProcAddress(dll,'BumpShaderSetNormalTexture');
  @BumpShaderSetHeightTexture:=getProcAddress(dll,'BumpShaderSetHeightTexture');
  @BumpShaderSetMaxLights:=getProcAddress(dll,'BumpShaderSetMaxLights');
  @BumpShaderUseParallax:=getProcAddress(dll,'BumpShaderUseParallax');
  @BumpShaderSetParallaxOffset:=getProcAddress(dll,'BumpShaderSetParallaxOffset');
  @BumpShaderSetShadowMap:=getProcAddress(dll,'BumpShaderSetShadowMap');
  @BumpShaderSetShadowBlurRadius:=getProcAddress(dll,'BumpShaderSetShadowBlurRadius');
  @BumpShaderUseAutoTangentSpace:=getProcAddress(dll,'BumpShaderUseAutoTangentSpace');
  @CelShaderCreate:=getProcAddress(dll,'CelShaderCreate');
  @CelShaderSetLineColor:=getProcAddress(dll,'CelShaderSetLineColor');
  @CelShaderSetLineWidth:=getProcAddress(dll,'CelShaderSetLineWidth');
  @CelShaderSetOptions:=getProcAddress(dll,'CelShaderSetOptions');
  @MultiMaterialShaderCreate:=getProcAddress(dll,'MultiMaterialShaderCreate');
  @HiddenLineShaderCreate:=getProcAddress(dll,'HiddenLineShaderCreate');
  @HiddenLineShaderSetLineSmooth:=getProcAddress(dll,'HiddenLineShaderSetLineSmooth');
  @HiddenLineShaderSetSolid:=getProcAddress(dll,'HiddenLineShaderSetSolid');
  @HiddenLineShaderSetSurfaceLit:=getProcAddress(dll,'HiddenLineShaderSetSurfaceLit');
  @HiddenLineShaderSetFrontLine:=getProcAddress(dll,'HiddenLineShaderSetFrontLine');
  @HiddenLineShaderSetBackLine:=getProcAddress(dll,'HiddenLineShaderSetBackLine');
  @OutlineShaderCreate:=getProcAddress(dll,'OutlineShaderCreate');
  @OutlineShaderSetLineColor:=getProcAddress(dll,'OutlineShaderSetLineColor');
  @OutlineShaderSetLineWidth:=getProcAddress(dll,'OutlineShaderSetLineWidth');
  @TexCombineShaderCreate:=getProcAddress(dll,'TexCombineShaderCreate');
  @TexCombineShaderAddCombiner:=getProcAddress(dll,'TexCombineShaderAddCombiner');
  @TexCombineShaderMaterial3:=getProcAddress(dll,'TexCombineShaderMaterial3');
  @TexCombineShaderMaterial4:=getProcAddress(dll,'TexCombineShaderMaterial4');
  @GLSLShaderCreate:=getProcAddress(dll,'GLSLShaderCreate');
  @GLSLShaderCreateParameter:=getProcAddress(dll,'GLSLShaderCreateParameter');
  @GLSLShaderSetParameter1i:=getProcAddress(dll,'GLSLShaderSetParameter1i');
  @GLSLShaderSetParameter1f:=getProcAddress(dll,'GLSLShaderSetParameter1f');
  @GLSLShaderSetParameter2f:=getProcAddress(dll,'GLSLShaderSetParameter2f');
  @GLSLShaderSetParameter3f:=getProcAddress(dll,'GLSLShaderSetParameter3f');
  @GLSLShaderSetParameter4f:=getProcAddress(dll,'GLSLShaderSetParameter4f');
  @GLSLShaderSetParameterTexture:=getProcAddress(dll,'GLSLShaderSetParameterTexture');
  @GLSLShaderSetParameterSecondTexture:=getProcAddress(dll,'GLSLShaderSetParameterSecondTexture');
  @GLSLShaderSetParameterMatrix:=getProcAddress(dll,'GLSLShaderSetParameterMatrix');
  @GLSLShaderSetParameterInvMatrix:=getProcAddress(dll,'GLSLShaderSetParameterInvMatrix');
  @GLSLShaderSetParameterShadowTexture:=getProcAddress(dll,'GLSLShaderSetParameterShadowTexture');
  @GLSLShaderSetParameterShadowMatrix:=getProcAddress(dll,'GLSLShaderSetParameterShadowMatrix');
  @GLSLShaderSetParameterFBOColorTexture:=getProcAddress(dll,'GLSLShaderSetParameterFBOColorTexture');
  @GLSLShaderSetParameterFBODepthTexture:=getProcAddress(dll,'GLSLShaderSetParameterFBODepthTexture');
  @GLSLShaderSetParameterViewMatrix:=getProcAddress(dll,'GLSLShaderSetParameterViewMatrix');
  @GLSLShaderSetParameterInvViewMatrix:=getProcAddress(dll,'GLSLShaderSetParameterInvViewMatrix');
  @GLSLShaderSetParameterHasTextureEx:=getProcAddress(dll,'GLSLShaderSetParameterHasTextureEx');
  @ThorFXManagerCreate:=getProcAddress(dll,'ThorFXManagerCreate');
  @ThorFXCreate:=getProcAddress(dll,'ThorFXCreate');
  @ThorFXSetColor:=getProcAddress(dll,'ThorFXSetColor');
  @ThorFXEnableCore:=getProcAddress(dll,'ThorFXEnableCore');
  @ThorFXEnableGlow:=getProcAddress(dll,'ThorFXEnableGlow');
  @ThorFXSetMaxParticles:=getProcAddress(dll,'ThorFXSetMaxParticles');
  @ThorFXSetGlowSize:=getProcAddress(dll,'ThorFXSetGlowSize');
  @ThorFXSetVibrate:=getProcAddress(dll,'ThorFXSetVibrate');
  @ThorFXSetWildness:=getProcAddress(dll,'ThorFXSetWildness');
  @ThorFXSetTarget:=getProcAddress(dll,'ThorFXSetTarget');
  @FireFXManagerCreate:=getProcAddress(dll,'FireFXManagerCreate');
  @FireFXCreate:=getProcAddress(dll,'FireFXCreate');
  @FireFXSetColor:=getProcAddress(dll,'FireFXSetColor');
  @FireFXSetMaxParticles:=getProcAddress(dll,'FireFXSetMaxParticles');
  @FireFXSetParticleSize:=getProcAddress(dll,'FireFXSetParticleSize');
  @FireFXSetDensity:=getProcAddress(dll,'FireFXSetDensity');
  @FireFXSetEvaporation:=getProcAddress(dll,'FireFXSetEvaporation');
  @FireFXSetCrown:=getProcAddress(dll,'FireFXSetCrown');
  @FireFXSetLife:=getProcAddress(dll,'FireFXSetLife');
  @FireFXSetBurst:=getProcAddress(dll,'FireFXSetBurst');
  @FireFXSetRadius:=getProcAddress(dll,'FireFXSetRadius');
  @FireFXExplosion:=getProcAddress(dll,'FireFXExplosion');
  @LensflareCreate:=getProcAddress(dll,'LensflareCreate');
  @LensflareSetSize:=getProcAddress(dll,'LensflareSetSize');
  @LensflareSetSeed:=getProcAddress(dll,'LensflareSetSeed');
  @LensflareSetSqueeze:=getProcAddress(dll,'LensflareSetSqueeze');
  @LensflareSetStreaks:=getProcAddress(dll,'LensflareSetStreaks');
  @LensflareSetStreakWidth:=getProcAddress(dll,'LensflareSetStreakWidth');
  @LensflareSetSecs:=getProcAddress(dll,'LensflareSetSecs');
  @LensflareSetResolution:=getProcAddress(dll,'LensflareSetResolution');
  @LensflareSetElements:=getProcAddress(dll,'LensflareSetElements');
  @LensflareSetGradients:=getProcAddress(dll,'LensflareSetGradients');
  @SkydomeCreate:=getProcAddress(dll,'SkydomeCreate');
  @SkydomeSetOptions:=getProcAddress(dll,'SkydomeSetOptions');
  @SkydomeSetDeepColor:=getProcAddress(dll,'SkydomeSetDeepColor');
  @SkydomeSetHazeColor:=getProcAddress(dll,'SkydomeSetHazeColor');
  @SkydomeSetNightColor:=getProcAddress(dll,'SkydomeSetNightColor');
  @SkydomeSetSkyColor:=getProcAddress(dll,'SkydomeSetSkyColor');
  @SkydomeSetSunDawnColor:=getProcAddress(dll,'SkydomeSetSunDawnColor');
  @SkydomeSetSunZenithColor:=getProcAddress(dll,'SkydomeSetSunZenithColor');
  @SkydomeSetSunElevation:=getProcAddress(dll,'SkydomeSetSunElevation');
  @SkydomeSetTurbidity:=getProcAddress(dll,'SkydomeSetTurbidity');
  @SkydomeAddRandomStars:=getProcAddress(dll,'SkydomeAddRandomStars');
  @SkydomeAddStar:=getProcAddress(dll,'SkydomeAddStar');
  @SkydomeClearStars:=getProcAddress(dll,'SkydomeClearStars');
  @SkydomeTwinkleStars:=getProcAddress(dll,'SkydomeTwinkleStars');
  @WaterCreate:=getProcAddress(dll,'WaterCreate');
  @WaterCreateRandomRipple:=getProcAddress(dll,'WaterCreateRandomRipple');
  @WaterCreateRippleAtGridPosition:=getProcAddress(dll,'WaterCreateRippleAtGridPosition');
  @WaterCreateRippleAtWorldPosition:=getProcAddress(dll,'WaterCreateRippleAtWorldPosition');
  @WaterCreateRippleAtObjectPosition:=getProcAddress(dll,'WaterCreateRippleAtObjectPosition');
  @WaterSetMask:=getProcAddress(dll,'WaterSetMask');
  @WaterSetActive:=getProcAddress(dll,'WaterSetActive');
  @WaterReset:=getProcAddress(dll,'WaterReset');
  @WaterSetRainTimeInterval:=getProcAddress(dll,'WaterSetRainTimeInterval');
  @WaterSetRainForce:=getProcAddress(dll,'WaterSetRainForce');
  @WaterSetViscosity:=getProcAddress(dll,'WaterSetViscosity');
  @WaterSetElastic:=getProcAddress(dll,'WaterSetElastic');
  @WaterSetResolution:=getProcAddress(dll,'WaterSetResolution');
  @WaterSetLinearWaveHeight:=getProcAddress(dll,'WaterSetLinearWaveHeight');
  @WaterSetLinearWaveFrequency:=getProcAddress(dll,'WaterSetLinearWaveFrequency');
  @BlurCreate:=getProcAddress(dll,'BlurCreate');
  @BlurSetPreset:=getProcAddress(dll,'BlurSetPreset');
  @BlurSetOptions:=getProcAddress(dll,'BlurSetOptions');
  @BlurSetResolution:=getProcAddress(dll,'BlurSetResolution');
  @BlurSetColor:=getProcAddress(dll,'BlurSetColor');
  @BlurSetBlendingMode:=getProcAddress(dll,'BlurSetBlendingMode');
  @SkyboxCreate:=getProcAddress(dll,'SkyboxCreate');
  @SkyboxSetMaterial:=getProcAddress(dll,'SkyboxSetMaterial');
  @SkyboxSetClouds:=getProcAddress(dll,'SkyboxSetClouds');
  @SkyboxSetStyle:=getProcAddress(dll,'SkyboxSetStyle');
  @LinesCreate:=getProcAddress(dll,'LinesCreate');
  @LinesAddNode:=getProcAddress(dll,'LinesAddNode');
  @LinesDeleteNode:=getProcAddress(dll,'LinesDeleteNode');
  @LinesSetColors:=getProcAddress(dll,'LinesSetColors');
  @LinesSetSize:=getProcAddress(dll,'LinesSetSize');
  @LinesSetSplineMode:=getProcAddress(dll,'LinesSetSplineMode');
  @LinesSetNodesAspect:=getProcAddress(dll,'LinesSetNodesAspect');
  @LinesSetDivision:=getProcAddress(dll,'LinesSetDivision');
  @TreeCreate:=getProcAddress(dll,'TreeCreate');
  @TreeSetMaterials:=getProcAddress(dll,'TreeSetMaterials');
  @TreeSetBranchFacets:=getProcAddress(dll,'TreeSetBranchFacets');
  @TreeBuildMesh:=getProcAddress(dll,'TreeBuildMesh');
  @TreeSetBranchNoise:=getProcAddress(dll,'TreeSetBranchNoise');
  @TreeSetBranchAngle:=getProcAddress(dll,'TreeSetBranchAngle');
  @TreeSetBranchSize:=getProcAddress(dll,'TreeSetBranchSize');
  @TreeSetBranchRadius:=getProcAddress(dll,'TreeSetBranchRadius');
  @TreeSetBranchTwist:=getProcAddress(dll,'TreeSetBranchTwist');
  @TreeSetDepth:=getProcAddress(dll,'TreeSetDepth');
  @TreeSetLeafSize:=getProcAddress(dll,'TreeSetLeafSize');
  @TreeSetLeafThreshold:=getProcAddress(dll,'TreeSetLeafThreshold');
  @TreeSetSeed:=getProcAddress(dll,'TreeSetSeed');
  @TrailCreate:=getProcAddress(dll,'TrailCreate');
  @TrailSetObject:=getProcAddress(dll,'TrailSetObject');
  @TrailSetAlpha:=getProcAddress(dll,'TrailSetAlpha');
  @TrailSetLimits:=getProcAddress(dll,'TrailSetLimits');
  @TrailSetMinDistance:=getProcAddress(dll,'TrailSetMinDistance');
  @TrailSetUVScale:=getProcAddress(dll,'TrailSetUVScale');
  @TrailSetMarkStyle:=getProcAddress(dll,'TrailSetMarkStyle');
  @TrailSetMarkWidth:=getProcAddress(dll,'TrailSetMarkWidth');
  @TrailSetEnabled:=getProcAddress(dll,'TrailSetEnabled');
  @TrailClearMarks:=getProcAddress(dll,'TrailClearMarks');
  @ShadowplaneCreate:=getProcAddress(dll,'ShadowplaneCreate');
  @ShadowplaneSetLight:=getProcAddress(dll,'ShadowplaneSetLight');
  @ShadowplaneSetObject:=getProcAddress(dll,'ShadowplaneSetObject');
  @ShadowplaneSetOptions:=getProcAddress(dll,'ShadowplaneSetOptions');
  @ShadowvolumeCreate:=getProcAddress(dll,'ShadowvolumeCreate');
  @ShadowvolumeSetActive:=getProcAddress(dll,'ShadowvolumeSetActive');
  @ShadowvolumeAddLight:=getProcAddress(dll,'ShadowvolumeAddLight');
  @ShadowvolumeRemoveLight:=getProcAddress(dll,'ShadowvolumeRemoveLight');
  @ShadowvolumeAddOccluder:=getProcAddress(dll,'ShadowvolumeAddOccluder');
  @ShadowvolumeRemoveOccluder:=getProcAddress(dll,'ShadowvolumeRemoveOccluder');
  @ShadowvolumeSetDarkeningColor:=getProcAddress(dll,'ShadowvolumeSetDarkeningColor');
  @ShadowvolumeSetMode:=getProcAddress(dll,'ShadowvolumeSetMode');
  @ShadowvolumeSetOptions:=getProcAddress(dll,'ShadowvolumeSetOptions');
  @NavigatorCreate:=getProcAddress(dll,'NavigatorCreate');
  @NavigatorSetObject:=getProcAddress(dll,'NavigatorSetObject');
  @NavigatorSetUseVirtualUp:=getProcAddress(dll,'NavigatorSetUseVirtualUp');
  @NavigatorSetVirtualUp:=getProcAddress(dll,'NavigatorSetVirtualUp');
  @NavigatorTurnHorizontal:=getProcAddress(dll,'NavigatorTurnHorizontal');
  @NavigatorTurnVertical:=getProcAddress(dll,'NavigatorTurnVertical');
  @NavigatorMoveForward:=getProcAddress(dll,'NavigatorMoveForward');
  @NavigatorStrafeHorizontal:=getProcAddress(dll,'NavigatorStrafeHorizontal');
  @NavigatorStrafeVertical:=getProcAddress(dll,'NavigatorStrafeVertical');
  @NavigatorStraighten:=getProcAddress(dll,'NavigatorStraighten');
  @NavigatorFlyForward:=getProcAddress(dll,'NavigatorFlyForward');
  @NavigatorMoveUpWhenMovingForward:=getProcAddress(dll,'NavigatorMoveUpWhenMovingForward');
  @NavigatorInvertHorizontalWhenUpsideDown:=getProcAddress(dll,'NavigatorInvertHorizontalWhenUpsideDown');
  @NavigatorSetAngleLock:=getProcAddress(dll,'NavigatorSetAngleLock');
  @NavigatorSetAngles:=getProcAddress(dll,'NavigatorSetAngles');
  @MovementCreate:=getProcAddress(dll,'MovementCreate');
  @MovementStart:=getProcAddress(dll,'MovementStart');
  @MovementStop:=getProcAddress(dll,'MovementStop');
  @MovementAutoStartNextPath:=getProcAddress(dll,'MovementAutoStartNextPath');
  @MovementAddPath:=getProcAddress(dll,'MovementAddPath');
  @MovementSetActivePath:=getProcAddress(dll,'MovementSetActivePath');
  @MovementPathSetSplineMode:=getProcAddress(dll,'MovementPathSetSplineMode');
  @MovementPathAddNode:=getProcAddress(dll,'MovementPathAddNode');
  @MovementPathNodeSetPosition:=getProcAddress(dll,'MovementPathNodeSetPosition');
  @MovementPathNodeSetRotation:=getProcAddress(dll,'MovementPathNodeSetRotation');
  @MovementPathNodeSetSpeed:=getProcAddress(dll,'MovementPathNodeSetSpeed');
  @DceManagerCreate:=getProcAddress(dll,'DceManagerCreate');
  @DceManagerStep:=getProcAddress(dll,'DceManagerStep');
  @DceManagerSetGravity:=getProcAddress(dll,'DceManagerSetGravity');
  @DceManagerSetWorldDirection:=getProcAddress(dll,'DceManagerSetWorldDirection');
  @DceManagerSetWorldScale:=getProcAddress(dll,'DceManagerSetWorldScale');
  @DceManagerSetMovementScale:=getProcAddress(dll,'DceManagerSetMovementScale');
  @DceManagerSetLayers:=getProcAddress(dll,'DceManagerSetLayers');
  @DceManagerSetManualStep:=getProcAddress(dll,'DceManagerSetManualStep');
  @DceDynamicSetManager:=getProcAddress(dll,'DceDynamicSetManager');
  @DceDynamicSetActive:=getProcAddress(dll,'DceDynamicSetActive');
  @DceDynamicIsActive:=getProcAddress(dll,'DceDynamicIsActive');
  @DceDynamicSetUseGravity:=getProcAddress(dll,'DceDynamicSetUseGravity');
  @DceDynamicSetLayer:=getProcAddress(dll,'DceDynamicSetLayer');
  @DceDynamicGetLayer:=getProcAddress(dll,'DceDynamicGetLayer');
  @DceDynamicSetSolid:=getProcAddress(dll,'DceDynamicSetSolid');
  @DceDynamicSetFriction:=getProcAddress(dll,'DceDynamicSetFriction');
  @DceDynamicSetBounce:=getProcAddress(dll,'DceDynamicSetBounce');
  @DceDynamicSetSize:=getProcAddress(dll,'DceDynamicSetSize');
  @DceDynamicSetSlideOrBounce:=getProcAddress(dll,'DceDynamicSetSlideOrBounce');
  @DceDynamicApplyAcceleration:=getProcAddress(dll,'DceDynamicApplyAcceleration');
  @DceDynamicApplyAbsAcceleration:=getProcAddress(dll,'DceDynamicApplyAbsAcceleration');
  @DceDynamicStopAcceleration:=getProcAddress(dll,'DceDynamicStopAcceleration');
  @DceDynamicStopAbsAcceleration:=getProcAddress(dll,'DceDynamicStopAbsAcceleration');
  @DceDynamicJump:=getProcAddress(dll,'DceDynamicJump');
  @DceDynamicMove:=getProcAddress(dll,'DceDynamicMove');
  @DceDynamicMoveTo:=getProcAddress(dll,'DceDynamicMoveTo');
  @DceDynamicSetVelocity:=getProcAddress(dll,'DceDynamicSetVelocity');
  @DceDynamicGetVelocity:=getProcAddress(dll,'DceDynamicGetVelocity');
  @DceDynamicSetAbsVelocity:=getProcAddress(dll,'DceDynamicSetAbsVelocity');
  @DceDynamicGetAbsVelocity:=getProcAddress(dll,'DceDynamicGetAbsVelocity');
  @DceDynamicApplyImpulse:=getProcAddress(dll,'DceDynamicApplyImpulse');
  @DceDynamicApplyAbsImpulse:=getProcAddress(dll,'DceDynamicApplyAbsImpulse');
  @DceDynamicInGround:=getProcAddress(dll,'DceDynamicInGround');
  @DceDynamicSetMaxRecursionDepth:=getProcAddress(dll,'DceDynamicSetMaxRecursionDepth');
  @DceStaticSetManager:=getProcAddress(dll,'DceStaticSetManager');
  @DceStaticSetActive:=getProcAddress(dll,'DceStaticSetActive');
  @DceStaticSetShape:=getProcAddress(dll,'DceStaticSetShape');
  @DceStaticSetLayer:=getProcAddress(dll,'DceStaticSetLayer');
  @DceStaticSetSize:=getProcAddress(dll,'DceStaticSetSize');
  @DceStaticSetSolid:=getProcAddress(dll,'DceStaticSetSolid');
  @DceStaticSetFriction:=getProcAddress(dll,'DceStaticSetFriction');
  @DceStaticSetBounceFactor:=getProcAddress(dll,'DceStaticSetBounceFactor');
  @FpsManagerCreate:=getProcAddress(dll,'FpsManagerCreate');
  @FpsManagerSetNavigator:=getProcAddress(dll,'FpsManagerSetNavigator');
  @FpsManagerSetMovementScale:=getProcAddress(dll,'FpsManagerSetMovementScale');
  @FpsManagerAddMap:=getProcAddress(dll,'FpsManagerAddMap');
  @FpsManagerRemoveMap:=getProcAddress(dll,'FpsManagerRemoveMap');
  @FpsManagerMapSetCollisionGroup:=getProcAddress(dll,'FpsManagerMapSetCollisionGroup');
  @FpsSetManager:=getProcAddress(dll,'FpsSetManager');
  @FpsSetCollisionGroup:=getProcAddress(dll,'FpsSetCollisionGroup');
  @FpsSetSphereRadius:=getProcAddress(dll,'FpsSetSphereRadius');
  @FpsSetGravity:=getProcAddress(dll,'FpsSetGravity');
  @FpsMove:=getProcAddress(dll,'FpsMove');
  @FpsStrafe:=getProcAddress(dll,'FpsStrafe');
  @FpsLift:=getProcAddress(dll,'FpsLift');
  @FpsGetVelocity:=getProcAddress(dll,'FpsGetVelocity');
  @OctreeCreate:=getProcAddress(dll,'OctreeCreate');
  @QuadtreeCreate:=getProcAddress(dll,'QuadtreeCreate');
  @PartitionDestroy:=getProcAddress(dll,'PartitionDestroy');
  @PartitionAddLeaf:=getProcAddress(dll,'PartitionAddLeaf');
  @PartitionLeafChanged:=getProcAddress(dll,'PartitionLeafChanged');
  @PartitionQueryFrustum:=getProcAddress(dll,'PartitionQueryFrustum');
  @PartitionQueryLeaf:=getProcAddress(dll,'PartitionQueryLeaf');
  @PartitionQueryAABB:=getProcAddress(dll,'PartitionQueryAABB');
  @PartitionQueryBSphere:=getProcAddress(dll,'PartitionQueryBSphere');
  @PartitionGetNodeTests:=getProcAddress(dll,'PartitionGetNodeTests');
  @PartitionGetNodeCount:=getProcAddress(dll,'PartitionGetNodeCount');
  @PartitionGetResult:=getProcAddress(dll,'PartitionGetResult');
  @PartitionGetResultCount:=getProcAddress(dll,'PartitionGetResultCount');
  @PartitionResultShow:=getProcAddress(dll,'PartitionResultShow');
  @PartitionResultHide:=getProcAddress(dll,'PartitionResultHide');
  @MirrorCreate:=getProcAddress(dll,'MirrorCreate');
  @MirrorSetObject:=getProcAddress(dll,'MirrorSetObject');
  @MirrorSetOptions:=getProcAddress(dll,'MirrorSetOptions');
  @MirrorSetShape:=getProcAddress(dll,'MirrorSetShape');
  @MirrorSetDiskOptions:=getProcAddress(dll,'MirrorSetDiskOptions');
  @ProxyObjectCreate:=getProcAddress(dll,'ProxyObjectCreate');
  @ProxyObjectSetOptions:=getProcAddress(dll,'ProxyObjectSetOptions');
  @ProxyObjectSetTarget:=getProcAddress(dll,'ProxyObjectSetTarget');
  @MultiProxyObjectCreate:=getProcAddress(dll,'MultiProxyObjectCreate');
  @MultiProxyObjectAddTarget:=getProcAddress(dll,'MultiProxyObjectAddTarget');
  @GridCreate:=getProcAddress(dll,'GridCreate');
  @GridSetLineStyle:=getProcAddress(dll,'GridSetLineStyle');
  @GridSetLineSmoothing:=getProcAddress(dll,'GridSetLineSmoothing');
  @GridSetParts:=getProcAddress(dll,'GridSetParts');
  @GridSetColor:=getProcAddress(dll,'GridSetColor');
  @GridSetSize:=getProcAddress(dll,'GridSetSize');
  @GridSetPattern:=getProcAddress(dll,'GridSetPattern');
  @MemoryViewerCreate:=getProcAddress(dll,'MemoryViewerCreate');
  @MemoryViewerSetCamera:=getProcAddress(dll,'MemoryViewerSetCamera');
  @MemoryViewerRender:=getProcAddress(dll,'MemoryViewerRender');
  @MemoryViewerCopyToTexture:=getProcAddress(dll,'MemoryViewerCopyToTexture');
  @MemoryViewerSetViewport:=getProcAddress(dll,'MemoryViewerSetViewport');
  @FBOCreate:=getProcAddress(dll,'FBOCreate');
  @FBOSetCamera:=getProcAddress(dll,'FBOSetCamera');
  @FBORenderObject:=getProcAddress(dll,'FBORenderObject');
  @FBORenderObjectEx:=getProcAddress(dll,'FBORenderObjectEx');
  @FBOSetViewer:=getProcAddress(dll,'FBOSetViewer');
  @FBOSetOverrideMaterial:=getProcAddress(dll,'FBOSetOverrideMaterial');
  @FBOSetColorTextureFormat:=getProcAddress(dll,'FBOSetColorTextureFormat');
  @ShadowMapCreate:=getProcAddress(dll,'ShadowMapCreate');
  @ShadowMapSetCamera:=getProcAddress(dll,'ShadowMapSetCamera');
  @ShadowMapSetCaster:=getProcAddress(dll,'ShadowMapSetCaster');
  @ShadowMapSetProjectionSize:=getProcAddress(dll,'ShadowMapSetProjectionSize');
  @ShadowMapSetZScale:=getProcAddress(dll,'ShadowMapSetZScale');
  @ShadowMapSetZClippingPlanes:=getProcAddress(dll,'ShadowMapSetZClippingPlanes');
  @ShadowMapRender:=getProcAddress(dll,'ShadowMapRender');
  @ShadowMapSetFBO:=getProcAddress(dll,'ShadowMapSetFBO');
  @OdeManagerCreate:=getProcAddress(dll,'OdeManagerCreate');
  @OdeManagerDestroy:=getProcAddress(dll,'OdeManagerDestroy');
  @OdeManagerStep:=getProcAddress(dll,'OdeManagerStep');
  @OdeManagerGetNumContactJoints:=getProcAddress(dll,'OdeManagerGetNumContactJoints');
  @OdeManagerSetGravity:=getProcAddress(dll,'OdeManagerSetGravity');
  @OdeManagerSetSolver:=getProcAddress(dll,'OdeManagerSetSolver');
  @OdeManagerSetIterations:=getProcAddress(dll,'OdeManagerSetIterations');
  @OdeManagerSetMaxContacts:=getProcAddress(dll,'OdeManagerSetMaxContacts');
  @OdeManagerSetVisible:=getProcAddress(dll,'OdeManagerSetVisible');
  @OdeManagerSetGeomColor:=getProcAddress(dll,'OdeManagerSetGeomColor');
  @OdeWorldSetAutoDisableFlag:=getProcAddress(dll,'OdeWorldSetAutoDisableFlag');
  @OdeWorldSetAutoDisableLinearThreshold:=getProcAddress(dll,'OdeWorldSetAutoDisableLinearThreshold');
  @OdeWorldSetAutoDisableAngularThreshold:=getProcAddress(dll,'OdeWorldSetAutoDisableAngularThreshold');
  @OdeWorldSetAutoDisableSteps:=getProcAddress(dll,'OdeWorldSetAutoDisableSteps');
  @OdeWorldSetAutoDisableTime:=getProcAddress(dll,'OdeWorldSetAutoDisableTime');
  @OdeStaticCreate:=getProcAddress(dll,'OdeStaticCreate');
  @OdeDynamicCreate:=getProcAddress(dll,'OdeDynamicCreate');
  @OdeTerrainCreate:=getProcAddress(dll,'OdeTerrainCreate');
  @OdeDynamicCalculateMass:=getProcAddress(dll,'OdeDynamicCalculateMass');
  @OdeDynamicCalibrateCenterOfMass:=getProcAddress(dll,'OdeDynamicCalibrateCenterOfMass');
  @OdeDynamicAlignObject:=getProcAddress(dll,'OdeDynamicAlignObject');
  @OdeDynamicEnable:=getProcAddress(dll,'OdeDynamicEnable');
  @OdeDynamicSetAutoDisableFlag:=getProcAddress(dll,'OdeDynamicSetAutoDisableFlag');
  @OdeDynamicSetAutoDisableLinearThreshold:=getProcAddress(dll,'OdeDynamicSetAutoDisableLinearThreshold');
  @OdeDynamicSetAutoDisableAngularThreshold:=getProcAddress(dll,'OdeDynamicSetAutoDisableAngularThreshold');
  @OdeDynamicSetAutoDisableSteps:=getProcAddress(dll,'OdeDynamicSetAutoDisableSteps');
  @OdeDynamicSetAutoDisableTime:=getProcAddress(dll,'OdeDynamicSetAutoDisableTime');
  @OdeDynamicAddForce:=getProcAddress(dll,'OdeDynamicAddForce');
  @OdeDynamicAddForceAtPos:=getProcAddress(dll,'OdeDynamicAddForceAtPos');
  @OdeDynamicAddForceAtRelPos:=getProcAddress(dll,'OdeDynamicAddForceAtRelPos');
  @OdeDynamicAddRelForce:=getProcAddress(dll,'OdeDynamicAddRelForce');
  @OdeDynamicAddRelForceAtPos:=getProcAddress(dll,'OdeDynamicAddRelForceAtPos');
  @OdeDynamicAddRelForceAtRelPos:=getProcAddress(dll,'OdeDynamicAddRelForceAtRelPos');
  @OdeDynamicAddTorque:=getProcAddress(dll,'OdeDynamicAddTorque');
  @OdeDynamicAddRelTorque:=getProcAddress(dll,'OdeDynamicAddRelTorque');
  @OdeDynamicSetVelocity:=getProcAddress(dll,'OdeDynamicSetVelocity');
  @OdeDynamicSetAngularVelocity:=getProcAddress(dll,'OdeDynamicSetAngularVelocity');
  @OdeDynamicGetVelocity:=getProcAddress(dll,'OdeDynamicGetVelocity');
  @OdeDynamicGetAngularVelocity:=getProcAddress(dll,'OdeDynamicGetAngularVelocity');
  @OdeDynamicSetPosition:=getProcAddress(dll,'OdeDynamicSetPosition');
  @OdeDynamicSetRotationQuaternion:=getProcAddress(dll,'OdeDynamicSetRotationQuaternion');
  @OdeDynamicGetContactCount:=getProcAddress(dll,'OdeDynamicGetContactCount');
  @OdeStaticGetContactCount:=getProcAddress(dll,'OdeStaticGetContactCount');
  @OdeAddPlane:=getProcAddress(dll,'OdeAddPlane');
  @OdeAddBox:=getProcAddress(dll,'OdeAddBox');
  @OdeAddSphere:=getProcAddress(dll,'OdeAddSphere');
  @OdeAddCylinder:=getProcAddress(dll,'OdeAddCylinder');
  @OdeAddCone:=getProcAddress(dll,'OdeAddCone');
  @OdeAddCapsule:=getProcAddress(dll,'OdeAddCapsule');
  @OdeAddTriMesh:=getProcAddress(dll,'OdeAddTriMesh');
  @OdeElementSetDensity:=getProcAddress(dll,'OdeElementSetDensity');
  @OdeSurfaceEnableRollingFrictionCoeff:=getProcAddress(dll,'OdeSurfaceEnableRollingFrictionCoeff');
  @OdeSurfaceSetRollingFrictionCoeff:=getProcAddress(dll,'OdeSurfaceSetRollingFrictionCoeff');
  @OdeSurfaceSetMode:=getProcAddress(dll,'OdeSurfaceSetMode');
  @OdeSurfaceSetMu:=getProcAddress(dll,'OdeSurfaceSetMu');
  @OdeSurfaceSetMu2:=getProcAddress(dll,'OdeSurfaceSetMu2');
  @OdeSurfaceSetMu2:=getProcAddress(dll,'OdeSurfaceSetMu2');
  @OdeSurfaceSetBounce:=getProcAddress(dll,'OdeSurfaceSetBounce');
  @OdeSurfaceSetBounceVel:=getProcAddress(dll,'OdeSurfaceSetBounceVel');
  @OdeSurfaceSetSoftERP:=getProcAddress(dll,'OdeSurfaceSetSoftERP');
  @OdeSurfaceSetSoftCFM:=getProcAddress(dll,'OdeSurfaceSetSoftCFM');
  @OdeSurfaceSetMotion1:=getProcAddress(dll,'OdeSurfaceSetMotion1');
  @OdeSurfaceSetMotion2:=getProcAddress(dll,'OdeSurfaceSetMotion2');
  @OdeSurfaceSetSlip1:=getProcAddress(dll,'OdeSurfaceSetSlip1');
  @OdeSurfaceSetSlip2:=getProcAddress(dll,'OdeSurfaceSetSlip2');
  @OdeAddJointBall:=getProcAddress(dll,'OdeAddJointBall');
  @OdeAddJointFixed:=getProcAddress(dll,'OdeAddJointFixed');
  @OdeAddJointHinge:=getProcAddress(dll,'OdeAddJointHinge');
  @OdeAddJointHinge2:=getProcAddress(dll,'OdeAddJointHinge2');
  @OdeAddJointSlider:=getProcAddress(dll,'OdeAddJointSlider');
  @OdeAddJointUniversal:=getProcAddress(dll,'OdeAddJointUniversal');
  @OdeJointSetObjects:=getProcAddress(dll,'OdeJointSetObjects');
  @OdeJointEnable:=getProcAddress(dll,'OdeJointEnable');
  @OdeJointInitialize:=getProcAddress(dll,'OdeJointInitialize');
  @OdeJointSetAnchor:=getProcAddress(dll,'OdeJointSetAnchor');
  @OdeJointSetAnchorAtObject:=getProcAddress(dll,'OdeJointSetAnchorAtObject');
  @OdeJointSetAxis1:=getProcAddress(dll,'OdeJointSetAxis1');
  @OdeJointSetAxis2:=getProcAddress(dll,'OdeJointSetAxis2');
  @OdeJointSetBounce:=getProcAddress(dll,'OdeJointSetBounce');
  @OdeJointSetCFM:=getProcAddress(dll,'OdeJointSetCFM');
  @OdeJointSetFMax:=getProcAddress(dll,'OdeJointSetFMax');
  @OdeJointSetFudgeFactor:=getProcAddress(dll,'OdeJointSetFudgeFactor');
  @OdeJointSetHiStop:=getProcAddress(dll,'OdeJointSetHiStop');
  @OdeJointSetLoStop:=getProcAddress(dll,'OdeJointSetLoStop');
  @OdeJointSetStopCFM:=getProcAddress(dll,'OdeJointSetStopCFM');
  @OdeJointSetStopERP:=getProcAddress(dll,'OdeJointSetStopERP');
  @OdeJointSetVel:=getProcAddress(dll,'OdeJointSetVel');
  @OdeRagdollCreate:=getProcAddress(dll,'OdeRagdollCreate');
  @OdeRagdollHingeJointCreate:=getProcAddress(dll,'OdeRagdollHingeJointCreate');
  @OdeRagdollUniversalJointCreate:=getProcAddress(dll,'OdeRagdollUniversalJointCreate');
  @OdeRagdollDummyJointCreate:=getProcAddress(dll,'OdeRagdollDummyJointCreate');
  @OdeRagdollBoneCreate:=getProcAddress(dll,'OdeRagdollBoneCreate');
  @OdeRagdollBuild:=getProcAddress(dll,'OdeRagdollBuild');
  @OdeRagdollEnable:=getProcAddress(dll,'OdeRagdollEnable');
  @OdeRagdollUpdate:=getProcAddress(dll,'OdeRagdollUpdate');
  @OdeVehicleCreate:=getProcAddress(dll,'OdeVehicleCreate');
  @OdeVehicleSetScene:=getProcAddress(dll,'OdeVehicleSetScene');
  @OdeVehicleSetForwardForce:=getProcAddress(dll,'OdeVehicleSetForwardForce');
  @OdeVehicleAddSuspension:=getProcAddress(dll,'OdeVehicleAddSuspension');
  @OdeVehicleSuspensionGetWheel:=getProcAddress(dll,'OdeVehicleSuspensionGetWheel');
  @OdeVehicleSuspensionSetSteeringAngle:=getProcAddress(dll,'OdeVehicleSuspensionSetSteeringAngle');
  @TextRead:=getProcAddress(dll,'TextRead');
  @TextConvertANSIToUTF8:=getProcAddress(dll,'TextConvertANSIToUTF8');
  @ObjectHashCreate:=getProcAddress(dll,'ObjectHashCreate');
  @ObjectHashSetItem:=getProcAddress(dll,'ObjectHashSetItem');
  @ObjectHashGetItem:=getProcAddress(dll,'ObjectHashGetItem');
  @ObjectHashDeleteItem:=getProcAddress(dll,'ObjectHashDeleteItem');
  @ObjectHashGetItemCount:=getProcAddress(dll,'ObjectHashGetItemCount');
  @ObjectHashClear:=getProcAddress(dll,'ObjectHashClear');
  @ObjectHashDestroy:=getProcAddress(dll,'ObjectHashDestroy');
  @ClipPlaneCreate:=getProcAddress(dll,'ClipPlaneCreate');
  @ClipPlaneEnable:=getProcAddress(dll,'ClipPlaneEnable');
  @ClipPlaneSetPlane:=getProcAddress(dll,'ClipPlaneSetPlane');

  lua_register(L,'xEngineCreate',@LEngineCreate);
  lua_register(L,'xEngineDestroy',@LEngineDestroy);
  lua_register(L,'xEngineSetObjectsSorting',@LEngineSetObjectsSorting);
  lua_register(L,'xEngineSetCulling',@LEngineSetCulling);
  lua_register(L,'xSetPakArchive',@LSetPakArchive);
  lua_register(L,'xUpdate',@LUpdate);
  lua_register(L,'xTrisRendered',@LTrisRendered);
  lua_register(L,'xViewerCreate',@LViewerCreate);
  lua_register(L,'xViewerSetCamera',@LViewerSetCamera);
  lua_register(L,'xViewerEnableVSync',@LViewerEnableVSync);
  lua_register(L,'xViewerSetAutoRender',@LViewerSetAutoRender);
  lua_register(L,'xViewerRender',@LViewerRender);
  lua_register(L,'xViewerRenderToFile',@LViewerRenderToFile);
  lua_register(L,'xViewerRenderEx',@LViewerRenderEx);
  lua_register(L,'xViewerResize',@LViewerResize);
  lua_register(L,'xViewerSetVisible',@LViewerSetVisible);
  lua_register(L,'xViewerGetPixelColor',@LViewerGetPixelColor);
  lua_register(L,'xViewerGetPixelDepth',@LViewerGetPixelDepth);
  lua_register(L,'xViewerSetLighting',@LViewerSetLighting);
  lua_register(L,'xViewerSetBackgroundColor',@LViewerSetBackgroundColor);
  lua_register(L,'xViewerSetAmbientColor',@LViewerSetAmbientColor);
  lua_register(L,'xViewerEnableFog',@LViewerEnableFog);
  lua_register(L,'xViewerSetFogColor',@LViewerSetFogColor);
  lua_register(L,'xViewerSetFogDistance',@LViewerSetFogDistance);
  lua_register(L,'xViewerScreenToWorld',@LViewerScreenToWorld);
  lua_register(L,'xViewerWorldToScreen',@LViewerWorldToScreen);
  lua_register(L,'xViewerCopyToTexture',@LViewerCopyToTexture);
  lua_register(L,'xViewerGetFramesPerSecond',@LViewerGetFramesPerSecond);
  lua_register(L,'xViewerGetPickedObject',@LViewerGetPickedObject);
  lua_register(L,'xViewerGetPickedObjectsList',@LViewerGetPickedObjectsList);
  lua_register(L,'xViewerScreenToVector',@LViewerScreenToVector);
  lua_register(L,'xViewerVectorToScreen',@LViewerVectorToScreen);
  lua_register(L,'xViewerPixelToDistance',@LViewerPixelToDistance);
  lua_register(L,'xViewerSetAntiAliasing',@LViewerSetAntiAliasing);
  lua_register(L,'xViewerGetVBOSupported',@LViewerGetVBOSupported);
  lua_register(L,'xViewerGetGLSLSupported',@LViewerGetGLSLSupported);
  lua_register(L,'xViewerSetOverrideMaterial',@LViewerSetOverrideMaterial);
  lua_register(L,'xViewerGetSize',@LViewerGetSize);
  lua_register(L,'xViewerGetPosition',@LViewerGetPosition);
  lua_register(L,'xViewerIsOpenGLExtensionSupported',@LViewerIsOpenGLExtensionSupported);
  lua_register(L,'xDummycubeCreate',@LDummycubeCreate);
  lua_register(L,'xDummycubeAmalgamate',@LDummycubeAmalgamate);
  lua_register(L,'xDummycubeSetCameraMode',@LDummycubeSetCameraMode);
  lua_register(L,'xDummycubeSetVisible',@LDummycubeSetVisible);
  lua_register(L,'xDummycubeSetEdgeColor',@LDummycubeSetEdgeColor);
  lua_register(L,'xDummycubeSetCubeSize',@LDummycubeSetCubeSize);
  lua_register(L,'xCameraCreate',@LCameraCreate);
  lua_register(L,'xCameraSetStyle',@LCameraSetStyle);
  lua_register(L,'xCameraSetFocal',@LCameraSetFocal);
  lua_register(L,'xCameraSetSceneScale',@LCameraSetSceneScale);
  lua_register(L,'xCameraScaleScene',@LCameraScaleScene);
  lua_register(L,'xCameraSetViewDepth',@LCameraSetViewDepth);
  lua_register(L,'xCameraSetTargetObject',@LCameraSetTargetObject);
  lua_register(L,'xCameraMoveAroundTarget',@LCameraMoveAroundTarget);
  lua_register(L,'xCameraSetDistanceToTarget',@LCameraSetDistanceToTarget);
  lua_register(L,'xCameraGetDistanceToTarget',@LCameraGetDistanceToTarget);
  lua_register(L,'xCameraCopyToTexture',@LCameraCopyToTexture);
  lua_register(L,'xCameraGetNearPlane',@LCameraGetNearPlane);
  lua_register(L,'xCameraSetNearPlaneBias',@LCameraSetNearPlaneBias);
  lua_register(L,'xCameraAbsoluteVectorToTarget',@LCameraAbsoluteVectorToTarget);
  lua_register(L,'xCameraAbsoluteRightVectorToTarget',@LCameraAbsoluteRightVectorToTarget);
  lua_register(L,'xCameraAbsoluteUpVectorToTarget',@LCameraAbsoluteUpVectorToTarget);
  lua_register(L,'xCameraZoomAll',@LCameraZoomAll);
  lua_register(L,'xCameraScreenDeltaToVector',@LCameraScreenDeltaToVector);
  lua_register(L,'xCameraScreenDeltaToVectorXY',@LCameraScreenDeltaToVectorXY);
  lua_register(L,'xCameraScreenDeltaToVectorXZ',@LCameraScreenDeltaToVectorXZ);
  lua_register(L,'xCameraScreenDeltaToVectorYZ',@LCameraScreenDeltaToVectorYZ);
  lua_register(L,'xCameraAbsoluteEyeSpaceVector',@LCameraAbsoluteEyeSpaceVector);
  lua_register(L,'xCameraSetAutoLeveling',@LCameraSetAutoLeveling);
  lua_register(L,'xCameraMoveInEyeSpace',@LCameraMoveInEyeSpace);
  lua_register(L,'xCameraMoveTargetInEyeSpace',@LCameraMoveTargetInEyeSpace);
  lua_register(L,'xCameraPointInFront',@LCameraPointInFront);
  lua_register(L,'xCameraGetFieldOfView',@LCameraGetFieldOfView);
  lua_register(L,'xLightCreate',@LLightCreate);
  lua_register(L,'xLightSetAmbientColor',@LLightSetAmbientColor);
  lua_register(L,'xLightSetDiffuseColor',@LLightSetDiffuseColor);
  lua_register(L,'xLightSetSpecularColor',@LLightSetSpecularColor);
  lua_register(L,'xLightSetAttenuation',@LLightSetAttenuation);
  lua_register(L,'xLightSetShining',@LLightSetShining);
  lua_register(L,'xLightSetSpotCutoff',@LLightSetSpotCutoff);
  lua_register(L,'xLightSetSpotExponent',@LLightSetSpotExponent);
  lua_register(L,'xLightSetSpotDirection',@LLightSetSpotDirection);
  lua_register(L,'xLightSetStyle',@LLightSetStyle);
  lua_register(L,'xBmpfontCreate',@LBmpfontCreate);
  lua_register(L,'xBmpfontLoad',@LBmpfontLoad);
  lua_register(L,'xWindowsBitmapfontCreate',@LWindowsBitmapfontCreate);
  lua_register(L,'xHUDTextCreate',@LHUDTextCreate);
  lua_register(L,'xHUDTextSetRotation',@LHUDTextSetRotation);
  lua_register(L,'xHUDTextSetFont',@LHUDTextSetFont);
  lua_register(L,'xHUDTextSetColor',@LHUDTextSetColor);
  lua_register(L,'xHUDTextSetText',@LHUDTextSetText);
  lua_register(L,'xFlatTextCreate',@LFlatTextCreate);
  lua_register(L,'xFlatTextSetFont',@LFlatTextSetFont);
  lua_register(L,'xFlatTextSetColor',@LFlatTextSetColor);
  lua_register(L,'xFlatTextSetText',@LFlatTextSetText);
  lua_register(L,'xSpaceTextCreate',@LSpaceTextCreate);
  lua_register(L,'xSpaceTextSetExtrusion',@LSpaceTextSetExtrusion);
  lua_register(L,'xSpaceTextSetFont',@LSpaceTextSetFont);
  lua_register(L,'xSpaceTextSetText',@LSpaceTextSetText);
  lua_register(L,'xTTFontCreate',@LTTFontCreate);
  lua_register(L,'xTTFontSetLineGap',@LTTFontSetLineGap);
  lua_register(L,'xHUDSpriteCreate',@LHUDSpriteCreate);
  lua_register(L,'xSpriteCreate',@LSpriteCreate);
  lua_register(L,'xSpriteSetSize',@LSpriteSetSize);
  lua_register(L,'xSpriteScale',@LSpriteScale);
  lua_register(L,'xSpriteSetRotation',@LSpriteSetRotation);
  lua_register(L,'xSpriteRotate',@LSpriteRotate);
  lua_register(L,'xSpriteMirror',@LSpriteMirror);
  lua_register(L,'xSpriteNoZWrite',@LSpriteNoZWrite);
  lua_register(L,'xSpriteSetBounds',@LSpriteSetBounds);
  lua_register(L,'xSpriteSetBoundsUV',@LSpriteSetBoundsUV);
  lua_register(L,'xSpriteSetOrigin',@LSpriteSetOrigin);
  lua_register(L,'xSpriteCreateEx',@LSpriteCreateEx);
  lua_register(L,'xHUDSpriteCreateEx',@LHUDSpriteCreateEx);
  lua_register(L,'xHUDShapeRectangleCreate',@LHUDShapeRectangleCreate);
  lua_register(L,'xHUDShapeCircleCreate',@LHUDShapeCircleCreate);
  lua_register(L,'xHUDShapeLineCreate',@LHUDShapeLineCreate);
  lua_register(L,'xHUDShapeMeshCreate',@LHUDShapeMeshCreate);
  lua_register(L,'xHUDShapeCircleSetRadius',@LHUDShapeCircleSetRadius);
  lua_register(L,'xHUDShapeCircleSetSlices',@LHUDShapeCircleSetSlices);
  lua_register(L,'xHUDShapeCircleSetAngles',@LHUDShapeCircleSetAngles);
  lua_register(L,'xHUDShapeLineSetPoints',@LHUDShapeLineSetPoints);
  lua_register(L,'xHUDShapeLineSetWidth',@LHUDShapeLineSetWidth);
  lua_register(L,'xHUDShapeSetRotation',@LHUDShapeSetRotation);
  lua_register(L,'xHUDShapeRotate',@LHUDShapeRotate);
  lua_register(L,'xHUDShapeSetOrigin',@LHUDShapeSetOrigin);
  lua_register(L,'xHUDShapeSetSize',@LHUDShapeSetSize);
  lua_register(L,'xHUDShapeScale',@LHUDShapeScale);
  lua_register(L,'xHUDShapeSetColor',@LHUDShapeSetColor);
  lua_register(L,'xHUDShapeMeshAddVertex',@LHUDShapeMeshAddVertex);
  lua_register(L,'xHUDShapeMeshAddTriangle',@LHUDShapeMeshAddTriangle);
  lua_register(L,'xHUDShapeMeshSetVertex',@LHUDShapeMeshSetVertex);
  lua_register(L,'xHUDShapeMeshSetTexCoord',@LHUDShapeMeshSetTexCoord);
  lua_register(L,'xPlaneCreate',@LPlaneCreate);
  lua_register(L,'xCubeCreate',@LCubeCreate);
  lua_register(L,'xCubeSetNormalDirection',@LCubeSetNormalDirection);
  lua_register(L,'xSphereCreate',@LSphereCreate);
  lua_register(L,'xSphereSetAngleLimits',@LSphereSetAngleLimits);
  lua_register(L,'xCylinderCreate',@LCylinderCreate);
  lua_register(L,'xConeCreate',@LConeCreate);
  lua_register(L,'xAnnulusCreate',@LAnnulusCreate);
  lua_register(L,'xTorusCreate',@LTorusCreate);
  lua_register(L,'xDiskCreate',@LDiskCreate);
  lua_register(L,'xFrustrumCreate',@LFrustrumCreate);
  lua_register(L,'xDodecahedronCreate',@LDodecahedronCreate);
  lua_register(L,'xIcosahedronCreate',@LIcosahedronCreate);
  lua_register(L,'xTeapotCreate',@LTeapotCreate);
  lua_register(L,'xActorCreate',@LActorCreate);
  lua_register(L,'xActorCopy',@LActorCopy);
  lua_register(L,'xActorSetAnimationRange',@LActorSetAnimationRange);
  lua_register(L,'xActorGetCurrentFrame',@LActorGetCurrentFrame);
  lua_register(L,'xActorSwitchToAnimation',@LActorSwitchToAnimation);
  lua_register(L,'xActorSwitchToAnimationName',@LActorSwitchToAnimationName);
  lua_register(L,'xActorSynchronize',@LActorSynchronize);
  lua_register(L,'xActorSetInterval',@LActorSetInterval);
  lua_register(L,'xActorSetAnimationMode',@LActorSetAnimationMode);
  lua_register(L,'xActorSetFrameInterpolation',@LActorSetFrameInterpolation);
  lua_register(L,'xActorAddObject',@LActorAddObject);
  lua_register(L,'xActorGetCurrentAnimation',@LActorGetCurrentAnimation);
  lua_register(L,'xActorGetFrameCount',@LActorGetFrameCount);
  lua_register(L,'xActorGetBoneCount',@LActorGetBoneCount);
  lua_register(L,'xActorGetBoneByName',@LActorGetBoneByName);
  lua_register(L,'xActorGetBoneRotation',@LActorGetBoneRotation);
  lua_register(L,'xActorGetBonePosition',@LActorGetBonePosition);
  lua_register(L,'xActorBoneExportMatrix',@LActorBoneExportMatrix);
  lua_register(L,'xActorMakeSkeletalTranslationStatic',@LActorMakeSkeletalTranslationStatic);
  lua_register(L,'xActorMakeSkeletalRotationDelta',@LActorMakeSkeletalRotationDelta);
  lua_register(L,'xActorShowSkeleton',@LActorShowSkeleton);
  lua_register(L,'xAnimationBlenderCreate',@LAnimationBlenderCreate);
  lua_register(L,'xAnimationBlenderSetActor',@LAnimationBlenderSetActor);
  lua_register(L,'xAnimationBlenderSetAnimation',@LAnimationBlenderSetAnimation);
  lua_register(L,'xAnimationBlenderSetRatio',@LAnimationBlenderSetRatio);
  lua_register(L,'xActorLoadQ3TagList',@LActorLoadQ3TagList);
  lua_register(L,'xActorLoadQ3Animations',@LActorLoadQ3Animations);
  lua_register(L,'xActorQ3TagExportMatrix',@LActorQ3TagExportMatrix);
  lua_register(L,'xActorMeshObjectsCount',@LActorMeshObjectsCount);
  lua_register(L,'xActorFaceGroupsCount',@LActorFaceGroupsCount);
  lua_register(L,'xActorFaceGroupGetMaterialName',@LActorFaceGroupGetMaterialName);
  lua_register(L,'xActorFaceGroupSetMaterial',@LActorFaceGroupSetMaterial);
  lua_register(L,'xFreeformCreate',@LFreeformCreate);
  lua_register(L,'xFreeformCreateEmpty',@LFreeformCreateEmpty);
  lua_register(L,'xFreeformAddMesh',@LFreeformAddMesh);
  lua_register(L,'xFreeformMeshAddVertex',@LFreeformMeshAddVertex);
  lua_register(L,'xFreeformMeshAddNormal',@LFreeformMeshAddNormal);
  lua_register(L,'xFreeformMeshAddTexCoord',@LFreeformMeshAddTexCoord);
  lua_register(L,'xFreeformMeshAddSecondTexCoord',@LFreeformMeshAddSecondTexCoord);
  lua_register(L,'xFreeformMeshAddTangent',@LFreeformMeshAddTangent);
  lua_register(L,'xFreeformMeshAddBinormal',@LFreeformMeshAddBinormal);
  lua_register(L,'xFreeformMeshVerticesCount',@LFreeformMeshVerticesCount);
  lua_register(L,'xFreeformMeshTriangleCount',@LFreeformMeshTriangleCount);
  lua_register(L,'xFreeformMeshObjectsCount',@LFreeformMeshObjectsCount);
  lua_register(L,'xFreeformMeshAddFaceGroup',@LFreeformMeshAddFaceGroup);
  lua_register(L,'xFreeformMeshFaceGroupAddTriangle',@LFreeformMeshFaceGroupAddTriangle);
  lua_register(L,'xFreeformMeshFaceGroupTriangleCount',@LFreeformMeshFaceGroupTriangleCount);
  lua_register(L,'xFreeformMeshFaceGroupSetMaterial',@LFreeformMeshFaceGroupSetMaterial);
  lua_register(L,'xFreeformMeshFaceGroupGetMaterial',@LFreeformMeshFaceGroupGetMaterial);
  lua_register(L,'xFreeformMeshFaceGroupsCount',@LFreeformMeshFaceGroupsCount);
  lua_register(L,'xFreeformMeshGenNormals',@LFreeformMeshGenNormals);
  lua_register(L,'xFreeformMeshGenTangents',@LFreeformMeshGenTangents);
  lua_register(L,'xFreeformMeshSetVisible',@LFreeformMeshSetVisible);
  lua_register(L,'xFreeformMeshSetSecondCoords',@LFreeformMeshSetSecondCoords);
  lua_register(L,'xFreeformMeshGetVertex',@LFreeformMeshGetVertex);
  lua_register(L,'xFreeformMeshGetNormal',@LFreeformMeshGetNormal);
  lua_register(L,'xFreeformMeshGetTexCoord',@LFreeformMeshGetTexCoord);
  lua_register(L,'xFreeformMeshGetSecondTexCoord',@LFreeformMeshGetSecondTexCoord);
  lua_register(L,'xFreeformMeshGetTangent',@LFreeformMeshGetTangent);
  lua_register(L,'xFreeformMeshGetBinormal',@LFreeformMeshGetBinormal);
  lua_register(L,'xFreeformMeshFaceGroupGetIndex',@LFreeformMeshFaceGroupGetIndex);
  lua_register(L,'xFreeformMeshSetVertex',@LFreeformMeshSetVertex);
  lua_register(L,'xFreeformMeshSetNormal',@LFreeformMeshSetNormal);
  lua_register(L,'xFreeformMeshSetTexCoord',@LFreeformMeshSetTexCoord);
  lua_register(L,'xFreeformMeshSetSecondTexCoord',@LFreeformMeshSetSecondTexCoord);
  lua_register(L,'xFreeformMeshSetTangent',@LFreeformMeshSetTangent);
  lua_register(L,'xFreeformMeshSetBinormal',@LFreeformMeshSetBinormal);
  lua_register(L,'xFreeformMeshFaceGroupSetIndex',@LFreeformMeshFaceGroupSetIndex);
  lua_register(L,'xFreeformMeshTranslate',@LFreeformMeshTranslate);
  lua_register(L,'xFreeformMeshRotate',@LFreeformMeshRotate);
  lua_register(L,'xFreeformMeshScale',@LFreeformMeshScale);
  lua_register(L,'xFreeformMeshSetMaterial',@LFreeformMeshSetMaterial);
  lua_register(L,'xFreeformUseMeshMaterials',@LFreeformUseMeshMaterials);
  lua_register(L,'xFreeformPointInMesh',@LFreeformPointInMesh);
  lua_register(L,'xFreeformSphereSweepIntersect',@LFreeformSphereSweepIntersect);
  lua_register(L,'xFreeformToFreeforms',@LFreeformToFreeforms);
  lua_register(L,'xFreeformSave',@LFreeformSave);
  lua_register(L,'xFreeformGenTangents',@LFreeformGenTangents);
  lua_register(L,'xFreeformBuildOctree',@LFreeformBuildOctree);
  lua_register(L,'xFreeformCreateExplosionFX',@LFreeformCreateExplosionFX);
  lua_register(L,'xFreeformExplosionFXReset',@LFreeformExplosionFXReset);
  lua_register(L,'xFreeformExplosionFXEnable',@LFreeformExplosionFXEnable);
  lua_register(L,'xFreeformExplosionFXSetSpeed',@LFreeformExplosionFXSetSpeed);
  lua_register(L,'xBmpHDSCreate',@LBmpHDSCreate);
  lua_register(L,'xBmpHDSSetInfiniteWarp',@LBmpHDSSetInfiniteWarp);
  lua_register(L,'xBmpHDSInvert',@LBmpHDSInvert);
  lua_register(L,'xTerrainCreate',@LTerrainCreate);
  lua_register(L,'xTerrainSetHeightData',@LTerrainSetHeightData);
  lua_register(L,'xTerrainSetTileSize',@LTerrainSetTileSize);
  lua_register(L,'xTerrainSetTilesPerTexture',@LTerrainSetTilesPerTexture);
  lua_register(L,'xTerrainSetQualityDistance',@LTerrainSetQualityDistance);
  lua_register(L,'xTerrainSetQualityStyle',@LTerrainSetQualityStyle);
  lua_register(L,'xTerrainSetMaxCLodTriangles',@LTerrainSetMaxCLodTriangles);
  lua_register(L,'xTerrainSetCLodPrecision',@LTerrainSetCLodPrecision);
  lua_register(L,'xTerrainSetOcclusionFrameSkip',@LTerrainSetOcclusionFrameSkip);
  lua_register(L,'xTerrainSetOcclusionTesselate',@LTerrainSetOcclusionTesselate);
  lua_register(L,'xTerrainGetHeightAtObjectPosition',@LTerrainGetHeightAtObjectPosition);
  lua_register(L,'xTerrainGetLastTriCount',@LTerrainGetLastTriCount);
  lua_register(L,'xObjectHide',@LObjectHide);
  lua_register(L,'xObjectShow',@LObjectShow);
  lua_register(L,'xObjectIsVisible',@LObjectIsVisible);
  lua_register(L,'xObjectCopy',@LObjectCopy);
  lua_register(L,'xObjectDestroy',@LObjectDestroy);
  lua_register(L,'xObjectDestroyChildren',@LObjectDestroyChildren);
  lua_register(L,'xObjectSetPosition',@LObjectSetPosition);
  lua_register(L,'xObjectGetPosition',@LObjectGetPosition);
  lua_register(L,'xObjectGetAbsolutePosition',@LObjectGetAbsolutePosition);
  lua_register(L,'xObjectSetPositionOfObject',@LObjectSetPositionOfObject);
  lua_register(L,'xObjectAlignWithObject',@LObjectAlignWithObject);
  lua_register(L,'xObjectSetPositionX',@LObjectSetPositionX);
  lua_register(L,'xObjectSetPositionY',@LObjectSetPositionY);
  lua_register(L,'xObjectSetPositionZ',@LObjectSetPositionZ);
  lua_register(L,'xObjectGetDirection',@LObjectGetDirection);
  lua_register(L,'xObjectGetAbsoluteDirection',@LObjectGetAbsoluteDirection);
  lua_register(L,'xObjectSetAbsolutePosition',@LObjectSetAbsolutePosition);
  lua_register(L,'xObjectGetPositionX',@LObjectGetPositionX);
  lua_register(L,'xObjectGetPositionY',@LObjectGetPositionY);
  lua_register(L,'xObjectGetPositionZ',@LObjectGetPositionZ);
  lua_register(L,'xObjectSetDirection',@LObjectSetDirection);
  lua_register(L,'xObjectSetAbsoluteDirection',@LObjectSetAbsoluteDirection);
  lua_register(L,'xObjectGetPitch',@LObjectGetPitch);
  lua_register(L,'xObjectGetTurn',@LObjectGetTurn);
  lua_register(L,'xObjectGetRoll',@LObjectGetRoll);
  lua_register(L,'xObjectSetRotation',@LObjectSetRotation);
  lua_register(L,'xObjectMove',@LObjectMove);
  lua_register(L,'xObjectLift',@LObjectLift);
  lua_register(L,'xObjectStrafe',@LObjectStrafe);
  lua_register(L,'xObjectTranslate',@LObjectTranslate);
  lua_register(L,'xObjectRotate',@LObjectRotate);
  lua_register(L,'xObjectScale',@LObjectScale);
  lua_register(L,'xObjectSetScale',@LObjectSetScale);
  lua_register(L,'xObjectSetUpVector',@LObjectSetUpVector);
  lua_register(L,'xObjectPointToObject',@LObjectPointToObject);
  lua_register(L,'xObjectShowAxes',@LObjectShowAxes);
  lua_register(L,'xObjectGetGroundHeight',@LObjectGetGroundHeight);
  lua_register(L,'xObjectSceneRaycast',@LObjectSceneRaycast);
  lua_register(L,'xObjectRaycast',@LObjectRaycast);
  lua_register(L,'xObjectGetCollisionPosition',@LObjectGetCollisionPosition);
  lua_register(L,'xObjectGetCollisionNormal',@LObjectGetCollisionNormal);
  lua_register(L,'xObjectSetMaterial',@LObjectSetMaterial);
  lua_register(L,'xObjectGetDistance',@LObjectGetDistance);
  lua_register(L,'xObjectCheckCubeVsCube',@LObjectCheckCubeVsCube);
  lua_register(L,'xObjectCheckSphereVsSphere',@LObjectCheckSphereVsSphere);
  lua_register(L,'xObjectCheckSphereVsCube',@LObjectCheckSphereVsCube);
  lua_register(L,'xObjectCheckCubeVsFace',@LObjectCheckCubeVsFace);
  lua_register(L,'xObjectCheckFaceVsFace',@LObjectCheckFaceVsFace);
  lua_register(L,'xObjectIsPointInObject',@LObjectIsPointInObject);
  lua_register(L,'xObjectSetCulling',@LObjectSetCulling);
  lua_register(L,'xObjectSetName',@LObjectSetName);
  lua_register(L,'xObjectGetName',@LObjectGetName);
  lua_register(L,'xObjectGetClassName',@LObjectGetClassName);
  lua_register(L,'xObjectSetTag',@LObjectSetTag);
  lua_register(L,'xObjectGetTag',@LObjectGetTag);
  lua_register(L,'xObjectGetParent',@LObjectGetParent);
  lua_register(L,'xObjectGetChildCount',@LObjectGetChildCount);
  lua_register(L,'xObjectGetChild',@LObjectGetChild);
  lua_register(L,'xObjectGetIndex',@LObjectGetIndex);
  lua_register(L,'xObjectFindChild',@LObjectFindChild);
  lua_register(L,'xObjectGetBoundingSphereRadius',@LObjectGetBoundingSphereRadius);
  lua_register(L,'xObjectGetAbsoluteUp',@LObjectGetAbsoluteUp);
  lua_register(L,'xObjectSetAbsoluteUp',@LObjectSetAbsoluteUp);
  lua_register(L,'xObjectGetAbsoluteRight',@LObjectGetAbsoluteRight);
  lua_register(L,'xObjectGetAbsoluteXVector',@LObjectGetAbsoluteXVector);
  lua_register(L,'xObjectGetAbsoluteYVector',@LObjectGetAbsoluteYVector);
  lua_register(L,'xObjectGetAbsoluteZVector',@LObjectGetAbsoluteZVector);
  lua_register(L,'xObjectGetRight',@LObjectGetRight);
  lua_register(L,'xObjectMoveChildUp',@LObjectMoveChildUp);
  lua_register(L,'xObjectMoveChildDown',@LObjectMoveChildDown);
  lua_register(L,'xObjectSetParent',@LObjectSetParent);
  lua_register(L,'xObjectRemoveChild',@LObjectRemoveChild);
  lua_register(L,'xObjectMoveObjectAround',@LObjectMoveObjectAround);
  lua_register(L,'xObjectPitch',@LObjectPitch);
  lua_register(L,'xObjectTurn',@LObjectTurn);
  lua_register(L,'xObjectRoll',@LObjectRoll);
  lua_register(L,'xObjectGetUp',@LObjectGetUp);
  lua_register(L,'xObjectRotateAbsolute',@LObjectRotateAbsolute);
  lua_register(L,'xObjectRotateAbsoluteVector',@LObjectRotateAbsoluteVector);
  lua_register(L,'xObjectSetMatrixColumn',@LObjectSetMatrixColumn);
  lua_register(L,'xObjectExportMatrix',@LObjectExportMatrix);
  lua_register(L,'xObjectExportAbsoluteMatrix',@LObjectExportAbsoluteMatrix);
  lua_register(L,'xPolygonCreate',@LPolygonCreate);
  lua_register(L,'xPolygonAddVertex',@LPolygonAddVertex);
  lua_register(L,'xPolygonSetVertexPosition',@LPolygonSetVertexPosition);
  lua_register(L,'xPolygonDeleteVertex',@LPolygonDeleteVertex);
  lua_register(L,'xMaterialLibraryCreate',@LMaterialLibraryCreate);
  lua_register(L,'xMaterialLibraryActivate',@LMaterialLibraryActivate);
  lua_register(L,'xMaterialLibrarySetTexturePaths',@LMaterialLibrarySetTexturePaths);
  lua_register(L,'xMaterialLibraryClear',@LMaterialLibraryClear);
  lua_register(L,'xMaterialLibraryDeleteUnused',@LMaterialLibraryDeleteUnused);
  lua_register(L,'xMaterialLibraryHasMaterial',@LMaterialLibraryHasMaterial);
  lua_register(L,'xMaterialLibraryLoadScript',@LMaterialLibraryLoadScript);
  lua_register(L,'xMaterialCreate',@LMaterialCreate);
  lua_register(L,'xMaterialAddCubeMap',@LMaterialAddCubeMap);
  lua_register(L,'xMaterialCubeMapLoadImage',@LMaterialCubeMapLoadImage);
  lua_register(L,'xMaterialCubeMapGenerate',@LMaterialCubeMapGenerate);
  lua_register(L,'xMaterialCubeMapFromScene',@LMaterialCubeMapFromScene);
  lua_register(L,'xMaterialSetBlendingMode',@LMaterialSetBlendingMode);
  lua_register(L,'xMaterialSetOptions',@LMaterialSetOptions);
  lua_register(L,'xMaterialSetTextureMode',@LMaterialSetTextureMode);
  lua_register(L,'xMaterialSetTextureMappingMode',@LMaterialSetTextureMappingMode);
  lua_register(L,'xMaterialSetPolygonMode',@LMaterialSetPolygonMode);
  lua_register(L,'xMaterialSetTextureScale',@LMaterialSetTextureScale);
  lua_register(L,'xMaterialSetTextureOffset',@LMaterialSetTextureOffset);
  lua_register(L,'xMaterialSetTextureFilter',@LMaterialSetTextureFilter);
  lua_register(L,'xMaterialSetTextureImageAlpha',@LMaterialSetTextureImageAlpha);
  lua_register(L,'xMaterialEnableTexture',@LMaterialEnableTexture);
  lua_register(L,'xMaterialGetCount',@LMaterialGetCount);
  lua_register(L,'xMaterialGetName',@LMaterialGetName);
  lua_register(L,'xMaterialSetFaceCulling',@LMaterialSetFaceCulling);
  lua_register(L,'xMaterialSetTextureFormat',@LMaterialSetTextureFormat);
  lua_register(L,'xMaterialSetTextureCompression',@LMaterialSetTextureCompression);
  lua_register(L,'xMaterialTextureRequiredMemory',@LMaterialTextureRequiredMemory);
  lua_register(L,'xMaterialSetFilteringQuality',@LMaterialSetFilteringQuality);
  lua_register(L,'xMaterialAddTextureEx',@LMaterialAddTextureEx);
  lua_register(L,'xMaterialTextureExClear',@LMaterialTextureExClear);
  lua_register(L,'xMaterialTextureExDelete',@LMaterialTextureExDelete);
  lua_register(L,'xMaterialSetTexture',@LMaterialSetTexture);
  lua_register(L,'xMaterialSetSecondTexture',@LMaterialSetSecondTexture);
  lua_register(L,'xMaterialSetShininess',@LMaterialSetShininess);
  lua_register(L,'xMaterialSetAmbientColor',@LMaterialSetAmbientColor);
  lua_register(L,'xMaterialSetDiffuseColor',@LMaterialSetDiffuseColor);
  lua_register(L,'xMaterialSetSpecularColor',@LMaterialSetSpecularColor);
  lua_register(L,'xMaterialSetEmissionColor',@LMaterialSetEmissionColor);
  lua_register(L,'xMaterialSetShader',@LMaterialSetShader);
  lua_register(L,'xMaterialSaveTexture',@LMaterialSaveTexture);
  lua_register(L,'xMaterialNoiseCreate',@LMaterialNoiseCreate);
  lua_register(L,'xMaterialNoiseAnimate',@LMaterialNoiseAnimate);
  lua_register(L,'xMaterialNoiseSetDimensions',@LMaterialNoiseSetDimensions);
  lua_register(L,'xMaterialNoiseSetMinCut',@LMaterialNoiseSetMinCut);
  lua_register(L,'xMaterialNoiseSetSharpness',@LMaterialNoiseSetSharpness);
  lua_register(L,'xMaterialNoiseSetSeamless',@LMaterialNoiseSetSeamless);
  lua_register(L,'xMaterialNoiseRandomSeed',@LMaterialNoiseRandomSeed);
  lua_register(L,'xMaterialGenTexture',@LMaterialGenTexture);
  lua_register(L,'xMaterialSetTextureWrap',@LMaterialSetTextureWrap);
  lua_register(L,'xMaterialGetTextureWidth',@LMaterialGetTextureWidth);
  lua_register(L,'xMaterialGetTextureHeight',@LMaterialGetTextureHeight);
  lua_register(L,'xMaterialLoadTexture',@LMaterialLoadTexture);
  lua_register(L,'xMaterialLoadTextureEx',@LMaterialLoadTextureEx);
  lua_register(L,'xMaterialSetTextureEx',@LMaterialSetTextureEx);
  lua_register(L,'xMaterialGenTextureEx',@LMaterialGenTextureEx);
  lua_register(L,'xMaterialEnableTextureEx',@LMaterialEnableTextureEx);
  lua_register(L,'xMaterialHasTextureEx',@LMaterialHasTextureEx);
  lua_register(L,'xMaterialCullFrontFaces',@LMaterialCullFrontFaces);
  lua_register(L,'xMaterialSetZWrite',@LMaterialSetZWrite);
  lua_register(L,'xShaderEnable',@LShaderEnable);
  lua_register(L,'xPhongShaderCreate',@LPhongShaderCreate);
  lua_register(L,'xPhongShaderUseTexture',@LPhongShaderUseTexture);
  lua_register(L,'xPhongShaderSetMaxLights',@LPhongShaderSetMaxLights);
  lua_register(L,'xBumpShaderCreate',@LBumpShaderCreate);
  lua_register(L,'xBumpShaderSetDiffuseTexture',@LBumpShaderSetDiffuseTexture);
  lua_register(L,'xBumpShaderSetNormalTexture',@LBumpShaderSetNormalTexture);
  lua_register(L,'xBumpShaderSetHeightTexture',@LBumpShaderSetHeightTexture);
  lua_register(L,'xBumpShaderSetMaxLights',@LBumpShaderSetMaxLights);
  lua_register(L,'xBumpShaderUseParallax',@LBumpShaderUseParallax);
  lua_register(L,'xBumpShaderSetParallaxOffset',@LBumpShaderSetParallaxOffset);
  lua_register(L,'xBumpShaderSetShadowMap',@LBumpShaderSetShadowMap);
  lua_register(L,'xBumpShaderSetShadowBlurRadius',@LBumpShaderSetShadowBlurRadius);
  lua_register(L,'xBumpShaderUseAutoTangentSpace',@LBumpShaderUseAutoTangentSpace);
  lua_register(L,'xCelShaderCreate',@LCelShaderCreate);
  lua_register(L,'xCelShaderSetLineColor',@LCelShaderSetLineColor);
  lua_register(L,'xCelShaderSetLineWidth',@LCelShaderSetLineWidth);
  lua_register(L,'xCelShaderSetOptions',@LCelShaderSetOptions);
  lua_register(L,'xMultiMaterialShaderCreate',@LMultiMaterialShaderCreate);
  lua_register(L,'xHiddenLineShaderCreate',@LHiddenLineShaderCreate);
  lua_register(L,'xHiddenLineShaderSetLineSmooth',@LHiddenLineShaderSetLineSmooth);
  lua_register(L,'xHiddenLineShaderSetSolid',@LHiddenLineShaderSetSolid);
  lua_register(L,'xHiddenLineShaderSetSurfaceLit',@LHiddenLineShaderSetSurfaceLit);
  lua_register(L,'xHiddenLineShaderSetFrontLine',@LHiddenLineShaderSetFrontLine);
  lua_register(L,'xHiddenLineShaderSetBackLine',@LHiddenLineShaderSetBackLine);
  lua_register(L,'xOutlineShaderCreate',@LOutlineShaderCreate);
  lua_register(L,'xOutlineShaderSetLineColor',@LOutlineShaderSetLineColor);
  lua_register(L,'xOutlineShaderSetLineWidth',@LOutlineShaderSetLineWidth);
  lua_register(L,'xTexCombineShaderCreate',@LTexCombineShaderCreate);
  lua_register(L,'xTexCombineShaderAddCombiner',@LTexCombineShaderAddCombiner);
  lua_register(L,'xTexCombineShaderMaterial3',@LTexCombineShaderMaterial3);
  lua_register(L,'xTexCombineShaderMaterial4',@LTexCombineShaderMaterial4);
  lua_register(L,'xGLSLShaderCreate',@LGLSLShaderCreate);
  lua_register(L,'xGLSLShaderCreateParameter',@LGLSLShaderCreateParameter);
  lua_register(L,'xGLSLShaderSetParameter1i',@LGLSLShaderSetParameter1i);
  lua_register(L,'xGLSLShaderSetParameter1f',@LGLSLShaderSetParameter1f);
  lua_register(L,'xGLSLShaderSetParameter2f',@LGLSLShaderSetParameter2f);
  lua_register(L,'xGLSLShaderSetParameter3f',@LGLSLShaderSetParameter3f);
  lua_register(L,'xGLSLShaderSetParameter4f',@LGLSLShaderSetParameter4f);
  lua_register(L,'xGLSLShaderSetParameterTexture',@LGLSLShaderSetParameterTexture);
  lua_register(L,'xGLSLShaderSetParameterSecondTexture',@LGLSLShaderSetParameterSecondTexture);
  lua_register(L,'xGLSLShaderSetParameterMatrix',@LGLSLShaderSetParameterMatrix);
  lua_register(L,'xGLSLShaderSetParameterInvMatrix',@LGLSLShaderSetParameterInvMatrix);
  lua_register(L,'xGLSLShaderSetParameterShadowTexture',@LGLSLShaderSetParameterShadowTexture);
  lua_register(L,'xGLSLShaderSetParameterShadowMatrix',@LGLSLShaderSetParameterShadowMatrix);
  lua_register(L,'xGLSLShaderSetParameterFBOColorTexture',@LGLSLShaderSetParameterFBOColorTexture);
  lua_register(L,'xGLSLShaderSetParameterFBODepthTexture',@LGLSLShaderSetParameterFBODepthTexture);
  lua_register(L,'xGLSLShaderSetParameterViewMatrix',@LGLSLShaderSetParameterViewMatrix);
  lua_register(L,'xGLSLShaderSetParameterInvViewMatrix',@LGLSLShaderSetParameterInvViewMatrix);
  lua_register(L,'xGLSLShaderSetParameterHasTextureEx',@LGLSLShaderSetParameterHasTextureEx);
  lua_register(L,'xThorFXManagerCreate',@LThorFXManagerCreate);
  lua_register(L,'xThorFXCreate',@LThorFXCreate);
  lua_register(L,'xThorFXSetColor',@LThorFXSetColor);
  lua_register(L,'xThorFXEnableCore',@LThorFXEnableCore);
  lua_register(L,'xThorFXEnableGlow',@LThorFXEnableGlow);
  lua_register(L,'xThorFXSetMaxParticles',@LThorFXSetMaxParticles);
  lua_register(L,'xThorFXSetGlowSize',@LThorFXSetGlowSize);
  lua_register(L,'xThorFXSetVibrate',@LThorFXSetVibrate);
  lua_register(L,'xThorFXSetWildness',@LThorFXSetWildness);
  lua_register(L,'xThorFXSetTarget',@LThorFXSetTarget);
  lua_register(L,'xFireFXManagerCreate',@LFireFXManagerCreate);
  lua_register(L,'xFireFXCreate',@LFireFXCreate);
  lua_register(L,'xFireFXSetColor',@LFireFXSetColor);
  lua_register(L,'xFireFXSetMaxParticles',@LFireFXSetMaxParticles);
  lua_register(L,'xFireFXSetParticleSize',@LFireFXSetParticleSize);
  lua_register(L,'xFireFXSetDensity',@LFireFXSetDensity);
  lua_register(L,'xFireFXSetEvaporation',@LFireFXSetEvaporation);
  lua_register(L,'xFireFXSetCrown',@LFireFXSetCrown);
  lua_register(L,'xFireFXSetLife',@LFireFXSetLife);
  lua_register(L,'xFireFXSetBurst',@LFireFXSetBurst);
  lua_register(L,'xFireFXSetRadius',@LFireFXSetRadius);
  lua_register(L,'xFireFXExplosion',@LFireFXExplosion);
  lua_register(L,'xLensflareCreate',@LLensflareCreate);
  lua_register(L,'xLensflareSetSize',@LLensflareSetSize);
  lua_register(L,'xLensflareSetSeed',@LLensflareSetSeed);
  lua_register(L,'xLensflareSetSqueeze',@LLensflareSetSqueeze);
  lua_register(L,'xLensflareSetStreaks',@LLensflareSetStreaks);
  lua_register(L,'xLensflareSetStreakWidth',@LLensflareSetStreakWidth);
  lua_register(L,'xLensflareSetSecs',@LLensflareSetSecs);
  lua_register(L,'xLensflareSetResolution',@LLensflareSetResolution);
  lua_register(L,'xLensflareSetElements',@LLensflareSetElements);
  lua_register(L,'xLensflareSetGradients',@LLensflareSetGradients);
  lua_register(L,'xSkydomeCreate',@LSkydomeCreate);
  lua_register(L,'xSkydomeSetOptions',@LSkydomeSetOptions);
  lua_register(L,'xSkydomeSetDeepColor',@LSkydomeSetDeepColor);
  lua_register(L,'xSkydomeSetHazeColor',@LSkydomeSetHazeColor);
  lua_register(L,'xSkydomeSetNightColor',@LSkydomeSetNightColor);
  lua_register(L,'xSkydomeSetSkyColor',@LSkydomeSetSkyColor);
  lua_register(L,'xSkydomeSetSunDawnColor',@LSkydomeSetSunDawnColor);
  lua_register(L,'xSkydomeSetSunZenithColor',@LSkydomeSetSunZenithColor);
  lua_register(L,'xSkydomeSetSunElevation',@LSkydomeSetSunElevation);
  lua_register(L,'xSkydomeSetTurbidity',@LSkydomeSetTurbidity);
  lua_register(L,'xSkydomeAddRandomStars',@LSkydomeAddRandomStars);
  lua_register(L,'xSkydomeAddStar',@LSkydomeAddStar);
  lua_register(L,'xSkydomeClearStars',@LSkydomeClearStars);
  lua_register(L,'xSkydomeTwinkleStars',@LSkydomeTwinkleStars);
  lua_register(L,'xWaterCreate',@LWaterCreate);
  lua_register(L,'xWaterCreateRandomRipple',@LWaterCreateRandomRipple);
  lua_register(L,'xWaterCreateRippleAtGridPosition',@LWaterCreateRippleAtGridPosition);
  lua_register(L,'xWaterCreateRippleAtWorldPosition',@LWaterCreateRippleAtWorldPosition);
  lua_register(L,'xWaterCreateRippleAtObjectPosition',@LWaterCreateRippleAtObjectPosition);
  lua_register(L,'xWaterSetMask',@LWaterSetMask);
  lua_register(L,'xWaterSetActive',@LWaterSetActive);
  lua_register(L,'xWaterReset',@LWaterReset);
  lua_register(L,'xWaterSetRainTimeInterval',@LWaterSetRainTimeInterval);
  lua_register(L,'xWaterSetRainForce',@LWaterSetRainForce);
  lua_register(L,'xWaterSetViscosity',@LWaterSetViscosity);
  lua_register(L,'xWaterSetElastic',@LWaterSetElastic);
  lua_register(L,'xWaterSetResolution',@LWaterSetResolution);
  lua_register(L,'xWaterSetLinearWaveHeight',@LWaterSetLinearWaveHeight);
  lua_register(L,'xWaterSetLinearWaveFrequency',@LWaterSetLinearWaveFrequency);
  lua_register(L,'xBlurCreate',@LBlurCreate);
  lua_register(L,'xBlurSetPreset',@LBlurSetPreset);
  lua_register(L,'xBlurSetOptions',@LBlurSetOptions);
  lua_register(L,'xBlurSetResolution',@LBlurSetResolution);
  lua_register(L,'xBlurSetColor',@LBlurSetColor);
  lua_register(L,'xBlurSetBlendingMode',@LBlurSetBlendingMode);
  lua_register(L,'xSkyboxCreate',@LSkyboxCreate);
  lua_register(L,'xSkyboxSetMaterial',@LSkyboxSetMaterial);
  lua_register(L,'xSkyboxSetClouds',@LSkyboxSetClouds);
  lua_register(L,'xSkyboxSetStyle',@LSkyboxSetStyle);
  lua_register(L,'xLinesCreate',@LLinesCreate);
  lua_register(L,'xLinesAddNode',@LLinesAddNode);
  lua_register(L,'xLinesDeleteNode',@LLinesDeleteNode);
  lua_register(L,'xLinesSetColors',@LLinesSetColors);
  lua_register(L,'xLinesSetSize',@LLinesSetSize);
  lua_register(L,'xLinesSetSplineMode',@LLinesSetSplineMode);
  lua_register(L,'xLinesSetNodesAspect',@LLinesSetNodesAspect);
  lua_register(L,'xLinesSetDivision',@LLinesSetDivision);
  lua_register(L,'xTreeCreate',@LTreeCreate);
  lua_register(L,'xTreeSetMaterials',@LTreeSetMaterials);
  lua_register(L,'xTreeSetBranchFacets',@LTreeSetBranchFacets);
  lua_register(L,'xTreeBuildMesh',@LTreeBuildMesh);
  lua_register(L,'xTreeSetBranchNoise',@LTreeSetBranchNoise);
  lua_register(L,'xTreeSetBranchAngle',@LTreeSetBranchAngle);
  lua_register(L,'xTreeSetBranchSize',@LTreeSetBranchSize);
  lua_register(L,'xTreeSetBranchRadius',@LTreeSetBranchRadius);
  lua_register(L,'xTreeSetBranchTwist',@LTreeSetBranchTwist);
  lua_register(L,'xTreeSetDepth',@LTreeSetDepth);
  lua_register(L,'xTreeSetLeafSize',@LTreeSetLeafSize);
  lua_register(L,'xTreeSetLeafThreshold',@LTreeSetLeafThreshold);
  lua_register(L,'xTreeSetSeed',@LTreeSetSeed);
  lua_register(L,'xTrailCreate',@LTrailCreate);
  lua_register(L,'xTrailSetObject',@LTrailSetObject);
  lua_register(L,'xTrailSetAlpha',@LTrailSetAlpha);
  lua_register(L,'xTrailSetLimits',@LTrailSetLimits);
  lua_register(L,'xTrailSetMinDistance',@LTrailSetMinDistance);
  lua_register(L,'xTrailSetUVScale',@LTrailSetUVScale);
  lua_register(L,'xTrailSetMarkStyle',@LTrailSetMarkStyle);
  lua_register(L,'xTrailSetMarkWidth',@LTrailSetMarkWidth);
  lua_register(L,'xTrailSetEnabled',@LTrailSetEnabled);
  lua_register(L,'xTrailClearMarks',@LTrailClearMarks);
  lua_register(L,'xShadowplaneCreate',@LShadowplaneCreate);
  lua_register(L,'xShadowplaneSetLight',@LShadowplaneSetLight);
  lua_register(L,'xShadowplaneSetObject',@LShadowplaneSetObject);
  lua_register(L,'xShadowplaneSetOptions',@LShadowplaneSetOptions);
  lua_register(L,'xShadowvolumeCreate',@LShadowvolumeCreate);
  lua_register(L,'xShadowvolumeSetActive',@LShadowvolumeSetActive);
  lua_register(L,'xShadowvolumeAddLight',@LShadowvolumeAddLight);
  lua_register(L,'xShadowvolumeRemoveLight',@LShadowvolumeRemoveLight);
  lua_register(L,'xShadowvolumeAddOccluder',@LShadowvolumeAddOccluder);
  lua_register(L,'xShadowvolumeRemoveOccluder',@LShadowvolumeRemoveOccluder);
  lua_register(L,'xShadowvolumeSetDarkeningColor',@LShadowvolumeSetDarkeningColor);
  lua_register(L,'xShadowvolumeSetMode',@LShadowvolumeSetMode);
  lua_register(L,'xShadowvolumeSetOptions',@LShadowvolumeSetOptions);
  lua_register(L,'xNavigatorCreate',@LNavigatorCreate);
  lua_register(L,'xNavigatorSetObject',@LNavigatorSetObject);
  lua_register(L,'xNavigatorSetUseVirtualUp',@LNavigatorSetUseVirtualUp);
  lua_register(L,'xNavigatorSetVirtualUp',@LNavigatorSetVirtualUp);
  lua_register(L,'xNavigatorTurnHorizontal',@LNavigatorTurnHorizontal);
  lua_register(L,'xNavigatorTurnVertical',@LNavigatorTurnVertical);
  lua_register(L,'xNavigatorMoveForward',@LNavigatorMoveForward);
  lua_register(L,'xNavigatorStrafeHorizontal',@LNavigatorStrafeHorizontal);
  lua_register(L,'xNavigatorStrafeVertical',@LNavigatorStrafeVertical);
  lua_register(L,'xNavigatorStraighten',@LNavigatorStraighten);
  lua_register(L,'xNavigatorFlyForward',@LNavigatorFlyForward);
  lua_register(L,'xNavigatorMoveUpWhenMovingForward',@LNavigatorMoveUpWhenMovingForward);
  lua_register(L,'xNavigatorInvertHorizontalWhenUpsideDown',@LNavigatorInvertHorizontalWhenUpsideDown);
  lua_register(L,'xNavigatorSetAngleLock',@LNavigatorSetAngleLock);
  lua_register(L,'xNavigatorSetAngles',@LNavigatorSetAngles);
  lua_register(L,'xMovementCreate',@LMovementCreate);
  lua_register(L,'xMovementStart',@LMovementStart);
  lua_register(L,'xMovementStop',@LMovementStop);
  lua_register(L,'xMovementAutoStartNextPath',@LMovementAutoStartNextPath);
  lua_register(L,'xMovementAddPath',@LMovementAddPath);
  lua_register(L,'xMovementSetActivePath',@LMovementSetActivePath);
  lua_register(L,'xMovementPathSetSplineMode',@LMovementPathSetSplineMode);
  lua_register(L,'xMovementPathAddNode',@LMovementPathAddNode);
  lua_register(L,'xMovementPathNodeSetPosition',@LMovementPathNodeSetPosition);
  lua_register(L,'xMovementPathNodeSetRotation',@LMovementPathNodeSetRotation);
  lua_register(L,'xMovementPathNodeSetSpeed',@LMovementPathNodeSetSpeed);
  lua_register(L,'xDceManagerCreate',@LDceManagerCreate);
  lua_register(L,'xDceManagerStep',@LDceManagerStep);
  lua_register(L,'xDceManagerSetGravity',@LDceManagerSetGravity);
  lua_register(L,'xDceManagerSetWorldDirection',@LDceManagerSetWorldDirection);
  lua_register(L,'xDceManagerSetWorldScale',@LDceManagerSetWorldScale);
  lua_register(L,'xDceManagerSetMovementScale',@LDceManagerSetMovementScale);
  lua_register(L,'xDceManagerSetLayers',@LDceManagerSetLayers);
  lua_register(L,'xDceManagerSetManualStep',@LDceManagerSetManualStep);
  lua_register(L,'xDceDynamicSetManager',@LDceDynamicSetManager);
  lua_register(L,'xDceDynamicSetActive',@LDceDynamicSetActive);
  lua_register(L,'xDceDynamicIsActive',@LDceDynamicIsActive);
  lua_register(L,'xDceDynamicSetUseGravity',@LDceDynamicSetUseGravity);
  lua_register(L,'xDceDynamicSetLayer',@LDceDynamicSetLayer);
  lua_register(L,'xDceDynamicGetLayer',@LDceDynamicGetLayer);
  lua_register(L,'xDceDynamicSetSolid',@LDceDynamicSetSolid);
  lua_register(L,'xDceDynamicSetFriction',@LDceDynamicSetFriction);
  lua_register(L,'xDceDynamicSetBounce',@LDceDynamicSetBounce);
  lua_register(L,'xDceDynamicSetSize',@LDceDynamicSetSize);
  lua_register(L,'xDceDynamicSetSlideOrBounce',@LDceDynamicSetSlideOrBounce);
  lua_register(L,'xDceDynamicApplyAcceleration',@LDceDynamicApplyAcceleration);
  lua_register(L,'xDceDynamicApplyAbsAcceleration',@LDceDynamicApplyAbsAcceleration);
  lua_register(L,'xDceDynamicStopAcceleration',@LDceDynamicStopAcceleration);
  lua_register(L,'xDceDynamicStopAbsAcceleration',@LDceDynamicStopAbsAcceleration);
  lua_register(L,'xDceDynamicJump',@LDceDynamicJump);
  lua_register(L,'xDceDynamicMove',@LDceDynamicMove);
  lua_register(L,'xDceDynamicMoveTo',@LDceDynamicMoveTo);
  lua_register(L,'xDceDynamicSetVelocity',@LDceDynamicSetVelocity);
  lua_register(L,'xDceDynamicGetVelocity',@LDceDynamicGetVelocity);
  lua_register(L,'xDceDynamicSetAbsVelocity',@LDceDynamicSetAbsVelocity);
  lua_register(L,'xDceDynamicGetAbsVelocity',@LDceDynamicGetAbsVelocity);
  lua_register(L,'xDceDynamicApplyImpulse',@LDceDynamicApplyImpulse);
  lua_register(L,'xDceDynamicApplyAbsImpulse',@LDceDynamicApplyAbsImpulse);
  lua_register(L,'xDceDynamicInGround',@LDceDynamicInGround);
  lua_register(L,'xDceDynamicSetMaxRecursionDepth',@LDceDynamicSetMaxRecursionDepth);
  lua_register(L,'xDceStaticSetManager',@LDceStaticSetManager);
  lua_register(L,'xDceStaticSetActive',@LDceStaticSetActive);
  lua_register(L,'xDceStaticSetShape',@LDceStaticSetShape);
  lua_register(L,'xDceStaticSetLayer',@LDceStaticSetLayer);
  lua_register(L,'xDceStaticSetSize',@LDceStaticSetSize);
  lua_register(L,'xDceStaticSetSolid',@LDceStaticSetSolid);
  lua_register(L,'xDceStaticSetFriction',@LDceStaticSetFriction);
  lua_register(L,'xDceStaticSetBounceFactor',@LDceStaticSetBounceFactor);
  lua_register(L,'xFpsManagerCreate',@LFpsManagerCreate);
  lua_register(L,'xFpsManagerSetNavigator',@LFpsManagerSetNavigator);
  lua_register(L,'xFpsManagerSetMovementScale',@LFpsManagerSetMovementScale);
  lua_register(L,'xFpsManagerAddMap',@LFpsManagerAddMap);
  lua_register(L,'xFpsManagerRemoveMap',@LFpsManagerRemoveMap);
  lua_register(L,'xFpsManagerMapSetCollisionGroup',@LFpsManagerMapSetCollisionGroup);
  lua_register(L,'xFpsSetManager',@LFpsSetManager);
  lua_register(L,'xFpsSetCollisionGroup',@LFpsSetCollisionGroup);
  lua_register(L,'xFpsSetSphereRadius',@LFpsSetSphereRadius);
  lua_register(L,'xFpsSetGravity',@LFpsSetGravity);
  lua_register(L,'xFpsMove',@LFpsMove);
  lua_register(L,'xFpsStrafe',@LFpsStrafe);
  lua_register(L,'xFpsLift',@LFpsLift);
  lua_register(L,'xFpsGetVelocity',@LFpsGetVelocity);
  lua_register(L,'xOctreeCreate',@LOctreeCreate);
  lua_register(L,'xQuadtreeCreate',@LQuadtreeCreate);
  lua_register(L,'xPartitionDestroy',@LPartitionDestroy);
  lua_register(L,'xPartitionAddLeaf',@LPartitionAddLeaf);
  lua_register(L,'xPartitionLeafChanged',@LPartitionLeafChanged);
  lua_register(L,'xPartitionQueryFrustum',@LPartitionQueryFrustum);
  lua_register(L,'xPartitionQueryLeaf',@LPartitionQueryLeaf);
  lua_register(L,'xPartitionQueryAABB',@LPartitionQueryAABB);
  lua_register(L,'xPartitionQueryBSphere',@LPartitionQueryBSphere);
  lua_register(L,'xPartitionGetNodeTests',@LPartitionGetNodeTests);
  lua_register(L,'xPartitionGetNodeCount',@LPartitionGetNodeCount);
  lua_register(L,'xPartitionGetResult',@LPartitionGetResult);
  lua_register(L,'xPartitionGetResultCount',@LPartitionGetResultCount);
  lua_register(L,'xPartitionResultShow',@LPartitionResultShow);
  lua_register(L,'xPartitionResultHide',@LPartitionResultHide);
  lua_register(L,'xMirrorCreate',@LMirrorCreate);
  lua_register(L,'xMirrorSetObject',@LMirrorSetObject);
  lua_register(L,'xMirrorSetOptions',@LMirrorSetOptions);
  lua_register(L,'xMirrorSetShape',@LMirrorSetShape);
  lua_register(L,'xMirrorSetDiskOptions',@LMirrorSetDiskOptions);
  lua_register(L,'xProxyObjectCreate',@LProxyObjectCreate);
  lua_register(L,'xProxyObjectSetOptions',@LProxyObjectSetOptions);
  lua_register(L,'xProxyObjectSetTarget',@LProxyObjectSetTarget);
  lua_register(L,'xMultiProxyObjectCreate',@LMultiProxyObjectCreate);
  lua_register(L,'xMultiProxyObjectAddTarget',@LMultiProxyObjectAddTarget);
  lua_register(L,'xGridCreate',@LGridCreate);
  lua_register(L,'xGridSetLineStyle',@LGridSetLineStyle);
  lua_register(L,'xGridSetLineSmoothing',@LGridSetLineSmoothing);
  lua_register(L,'xGridSetParts',@LGridSetParts);
  lua_register(L,'xGridSetColor',@LGridSetColor);
  lua_register(L,'xGridSetSize',@LGridSetSize);
  lua_register(L,'xGridSetPattern',@LGridSetPattern);
  lua_register(L,'xMemoryViewerCreate',@LMemoryViewerCreate);
  lua_register(L,'xMemoryViewerSetCamera',@LMemoryViewerSetCamera);
  lua_register(L,'xMemoryViewerRender',@LMemoryViewerRender);
  lua_register(L,'xMemoryViewerCopyToTexture',@LMemoryViewerCopyToTexture);
  lua_register(L,'xMemoryViewerSetViewport',@LMemoryViewerSetViewport);
  lua_register(L,'xFBOCreate',@LFBOCreate);
  lua_register(L,'xFBOSetCamera',@LFBOSetCamera);
  lua_register(L,'xFBORenderObject',@LFBORenderObject);
  lua_register(L,'xFBORenderObjectEx',@LFBORenderObjectEx);
  lua_register(L,'xFBOSetViewer',@LFBOSetViewer);
  lua_register(L,'xFBOSetOverrideMaterial',@LFBOSetOverrideMaterial);
  lua_register(L,'xFBOSetColorTextureFormat',@LFBOSetColorTextureFormat);
  lua_register(L,'xShadowMapCreate',@LShadowMapCreate);
  lua_register(L,'xShadowMapSetCamera',@LShadowMapSetCamera);
  lua_register(L,'xShadowMapSetCaster',@LShadowMapSetCaster);
  lua_register(L,'xShadowMapSetProjectionSize',@LShadowMapSetProjectionSize);
  lua_register(L,'xShadowMapSetZScale',@LShadowMapSetZScale);
  lua_register(L,'xShadowMapSetZClippingPlanes',@LShadowMapSetZClippingPlanes);
  lua_register(L,'xShadowMapRender',@LShadowMapRender);
  lua_register(L,'xShadowMapSetFBO',@LShadowMapSetFBO);
  lua_register(L,'xOdeManagerCreate',@LOdeManagerCreate);
  lua_register(L,'xOdeManagerDestroy',@LOdeManagerDestroy);
  lua_register(L,'xOdeManagerStep',@LOdeManagerStep);
  lua_register(L,'xOdeManagerGetNumContactJoints',@LOdeManagerGetNumContactJoints);
  lua_register(L,'xOdeManagerSetGravity',@LOdeManagerSetGravity);
  lua_register(L,'xOdeManagerSetSolver',@LOdeManagerSetSolver);
  lua_register(L,'xOdeManagerSetIterations',@LOdeManagerSetIterations);
  lua_register(L,'xOdeManagerSetMaxContacts',@LOdeManagerSetMaxContacts);
  lua_register(L,'xOdeManagerSetVisible',@LOdeManagerSetVisible);
  lua_register(L,'xOdeManagerSetGeomColor',@LOdeManagerSetGeomColor);
  lua_register(L,'xOdeWorldSetAutoDisableFlag',@LOdeWorldSetAutoDisableFlag);
  lua_register(L,'xOdeWorldSetAutoDisableLinearThreshold',@LOdeWorldSetAutoDisableLinearThreshold);
  lua_register(L,'xOdeWorldSetAutoDisableAngularThreshold',@LOdeWorldSetAutoDisableAngularThreshold);
  lua_register(L,'xOdeWorldSetAutoDisableSteps',@LOdeWorldSetAutoDisableSteps);
  lua_register(L,'xOdeWorldSetAutoDisableTime',@LOdeWorldSetAutoDisableTime);
  lua_register(L,'xOdeStaticCreate',@LOdeStaticCreate);
  lua_register(L,'xOdeDynamicCreate',@LOdeDynamicCreate);
  lua_register(L,'xOdeTerrainCreate',@LOdeTerrainCreate);
  lua_register(L,'xOdeDynamicCalculateMass',@LOdeDynamicCalculateMass);
  lua_register(L,'xOdeDynamicCalibrateCenterOfMass',@LOdeDynamicCalibrateCenterOfMass);
  lua_register(L,'xOdeDynamicAlignObject',@LOdeDynamicAlignObject);
  lua_register(L,'xOdeDynamicEnable',@LOdeDynamicEnable);
  lua_register(L,'xOdeDynamicSetAutoDisableFlag',@LOdeDynamicSetAutoDisableFlag);
  lua_register(L,'xOdeDynamicSetAutoDisableLinearThreshold',@LOdeDynamicSetAutoDisableLinearThreshold);
  lua_register(L,'xOdeDynamicSetAutoDisableAngularThreshold',@LOdeDynamicSetAutoDisableAngularThreshold);
  lua_register(L,'xOdeDynamicSetAutoDisableSteps',@LOdeDynamicSetAutoDisableSteps);
  lua_register(L,'xOdeDynamicSetAutoDisableTime',@LOdeDynamicSetAutoDisableTime);
  lua_register(L,'xOdeDynamicAddForce',@LOdeDynamicAddForce);
  lua_register(L,'xOdeDynamicAddForceAtPos',@LOdeDynamicAddForceAtPos);
  lua_register(L,'xOdeDynamicAddForceAtRelPos',@LOdeDynamicAddForceAtRelPos);
  lua_register(L,'xOdeDynamicAddRelForce',@LOdeDynamicAddRelForce);
  lua_register(L,'xOdeDynamicAddRelForceAtPos',@LOdeDynamicAddRelForceAtPos);
  lua_register(L,'xOdeDynamicAddRelForceAtRelPos',@LOdeDynamicAddRelForceAtRelPos);
  lua_register(L,'xOdeDynamicAddTorque',@LOdeDynamicAddTorque);
  lua_register(L,'xOdeDynamicAddRelTorque',@LOdeDynamicAddRelTorque);
  lua_register(L,'xOdeDynamicSetVelocity',@LOdeDynamicSetVelocity);
  lua_register(L,'xOdeDynamicSetAngularVelocity',@LOdeDynamicSetAngularVelocity);
  lua_register(L,'xOdeDynamicGetVelocity',@LOdeDynamicGetVelocity);
  lua_register(L,'xOdeDynamicGetAngularVelocity',@LOdeDynamicGetAngularVelocity);
  lua_register(L,'xOdeDynamicSetPosition',@LOdeDynamicSetPosition);
  lua_register(L,'xOdeDynamicSetRotationQuaternion',@LOdeDynamicSetRotationQuaternion);
  lua_register(L,'xOdeDynamicGetContactCount',@LOdeDynamicGetContactCount);
  lua_register(L,'xOdeStaticGetContactCount',@LOdeStaticGetContactCount);
  lua_register(L,'xOdeAddPlane',@LOdeAddPlane);
  lua_register(L,'xOdeAddBox',@LOdeAddBox);
  lua_register(L,'xOdeAddSphere',@LOdeAddSphere);
  lua_register(L,'xOdeAddCylinder',@LOdeAddCylinder);
  lua_register(L,'xOdeAddCone',@LOdeAddCone);
  lua_register(L,'xOdeAddCapsule',@LOdeAddCapsule);
  lua_register(L,'xOdeAddTriMesh',@LOdeAddTriMesh);
  lua_register(L,'xOdeElementSetDensity',@LOdeElementSetDensity);
  lua_register(L,'xOdeSurfaceEnableRollingFrictionCoeff',@LOdeSurfaceEnableRollingFrictionCoeff);
  lua_register(L,'xOdeSurfaceSetRollingFrictionCoeff',@LOdeSurfaceSetRollingFrictionCoeff);
  lua_register(L,'xOdeSurfaceSetMode',@LOdeSurfaceSetMode);
  lua_register(L,'xOdeSurfaceSetMu',@LOdeSurfaceSetMu);
  lua_register(L,'xOdeSurfaceSetMu2',@LOdeSurfaceSetMu2);
  lua_register(L,'xOdeSurfaceSetMu2',@LOdeSurfaceSetMu2);
  lua_register(L,'xOdeSurfaceSetBounce',@LOdeSurfaceSetBounce);
  lua_register(L,'xOdeSurfaceSetBounceVel',@LOdeSurfaceSetBounceVel);
  lua_register(L,'xOdeSurfaceSetSoftERP',@LOdeSurfaceSetSoftERP);
  lua_register(L,'xOdeSurfaceSetSoftCFM',@LOdeSurfaceSetSoftCFM);
  lua_register(L,'xOdeSurfaceSetMotion1',@LOdeSurfaceSetMotion1);
  lua_register(L,'xOdeSurfaceSetMotion2',@LOdeSurfaceSetMotion2);
  lua_register(L,'xOdeSurfaceSetSlip1',@LOdeSurfaceSetSlip1);
  lua_register(L,'xOdeSurfaceSetSlip2',@LOdeSurfaceSetSlip2);
  lua_register(L,'xOdeAddJointBall',@LOdeAddJointBall);
  lua_register(L,'xOdeAddJointFixed',@LOdeAddJointFixed);
  lua_register(L,'xOdeAddJointHinge',@LOdeAddJointHinge);
  lua_register(L,'xOdeAddJointHinge2',@LOdeAddJointHinge2);
  lua_register(L,'xOdeAddJointSlider',@LOdeAddJointSlider);
  lua_register(L,'xOdeAddJointUniversal',@LOdeAddJointUniversal);
  lua_register(L,'xOdeJointSetObjects',@LOdeJointSetObjects);
  lua_register(L,'xOdeJointEnable',@LOdeJointEnable);
  lua_register(L,'xOdeJointInitialize',@LOdeJointInitialize);
  lua_register(L,'xOdeJointSetAnchor',@LOdeJointSetAnchor);
  lua_register(L,'xOdeJointSetAnchorAtObject',@LOdeJointSetAnchorAtObject);
  lua_register(L,'xOdeJointSetAxis1',@LOdeJointSetAxis1);
  lua_register(L,'xOdeJointSetAxis2',@LOdeJointSetAxis2);
  lua_register(L,'xOdeJointSetBounce',@LOdeJointSetBounce);
  lua_register(L,'xOdeJointSetCFM',@LOdeJointSetCFM);
  lua_register(L,'xOdeJointSetFMax',@LOdeJointSetFMax);
  lua_register(L,'xOdeJointSetFudgeFactor',@LOdeJointSetFudgeFactor);
  lua_register(L,'xOdeJointSetHiStop',@LOdeJointSetHiStop);
  lua_register(L,'xOdeJointSetLoStop',@LOdeJointSetLoStop);
  lua_register(L,'xOdeJointSetStopCFM',@LOdeJointSetStopCFM);
  lua_register(L,'xOdeJointSetStopERP',@LOdeJointSetStopERP);
  lua_register(L,'xOdeJointSetVel',@LOdeJointSetVel);
  lua_register(L,'xOdeRagdollCreate',@LOdeRagdollCreate);
  lua_register(L,'xOdeRagdollHingeJointCreate',@LOdeRagdollHingeJointCreate);
  lua_register(L,'xOdeRagdollUniversalJointCreate',@LOdeRagdollUniversalJointCreate);
  lua_register(L,'xOdeRagdollDummyJointCreate',@LOdeRagdollDummyJointCreate);
  lua_register(L,'xOdeRagdollBoneCreate',@LOdeRagdollBoneCreate);
  lua_register(L,'xOdeRagdollBuild',@LOdeRagdollBuild);
  lua_register(L,'xOdeRagdollEnable',@LOdeRagdollEnable);
  lua_register(L,'xOdeRagdollUpdate',@LOdeRagdollUpdate);
  lua_register(L,'xOdeVehicleCreate',@LOdeVehicleCreate);
  lua_register(L,'xOdeVehicleSetScene',@LOdeVehicleSetScene);
  lua_register(L,'xOdeVehicleSetForwardForce',@LOdeVehicleSetForwardForce);
  lua_register(L,'xOdeVehicleAddSuspension',@LOdeVehicleAddSuspension);
  lua_register(L,'xOdeVehicleSuspensionGetWheel',@LOdeVehicleSuspensionGetWheel);
  lua_register(L,'xOdeVehicleSuspensionSetSteeringAngle',@LOdeVehicleSuspensionSetSteeringAngle);
  lua_register(L,'xTextRead',@LTextRead);
  lua_register(L,'xTextConvertANSIToUTF8',@LTextConvertANSIToUTF8);
  lua_register(L,'xObjectHashCreate',@LObjectHashCreate);
  lua_register(L,'xObjectHashSetItem',@LObjectHashSetItem);
  lua_register(L,'xObjectHashGetItem',@LObjectHashGetItem);
  lua_register(L,'xObjectHashDeleteItem',@LObjectHashDeleteItem);
  lua_register(L,'xObjectHashGetItemCount',@LObjectHashGetItemCount);
  lua_register(L,'xObjectHashClear',@LObjectHashClear);
  lua_register(L,'xObjectHashDestroy',@LObjectHashDestroy);
  lua_register(L,'xClipPlaneCreate',@LClipPlaneCreate);
  lua_register(L,'xClipPlaneEnable',@LClipPlaneEnable);
  lua_register(L,'xClipPlaneSetPlane',@LClipPlaneSetPlane);

  lua_pushnumber(L,dll);
  Result:=1;
end;
