var
  u3dType: array of Double;
  u3dIndex: array of Double;
  TransmitString: function(R1: Double; S2: PChar): Double; cdecl;
  TransmitDouble: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;

var InitUltimate3D: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LInitUltimate3D(L: Plua_State): Integer; cdecl;
begin
  TransmitString(0,lua_tostring(L,11));
  TransmitString(1,lua_tostring(L,12));
  TransmitString(2,lua_tostring(L,13));

  InitUltimate3D(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10));
  lua_pushnumber(L,GetWindow(Trunc(lua_tonumber(L,1)),gw_Child));
  Result:=1;
end;
var Cleanup: function(): Double; cdecl;
function LCleanup(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Cleanup());
  Result:=1;
end;
var GetSupportedPSVersion: function(): Double; cdecl;
function LGetSupportedPSVersion(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetSupportedPSVersion());
  Result:=1;
end;
var GetCubeMapSupport: function(): Double; cdecl;
function LGetCubeMapSupport(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetCubeMapSupport());
  Result:=1;
end;
var GetSimultaneousTextureCount: function(): Double; cdecl;
function LGetSimultaneousTextureCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetSimultaneousTextureCount());
  Result:=1;
end;
var GetDrawnTriangleCount: function(): Double; cdecl;
function LGetDrawnTriangleCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetDrawnTriangleCount());
  Result:=1;
end;
var GetDrawCallCount: function(): Double; cdecl;
function LGetDrawCallCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetDrawCallCount());
  Result:=1;
end;
var Render: function(): Double; cdecl;
function LRender(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Render());
  Result:=1;
end;
var Present: function(): Double; cdecl;
function LPresent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Present());
  Result:=1;
end;
var SetMipMapCount: function(R1: Double): Double; cdecl;
function LSetMipMapCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMipMapCount(lua_tonumber(L,1)));
  Result:=1;
end;
var SetTexturePath: function(S1: PChar): Double; cdecl;
function LSetTexturePath(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetTexturePath(lua_tostring(L,1)));
  Result:=1;
end;
var LoadTexture: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; cdecl;
function LLoadTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LoadTexture(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var LoadHeightMap: function(R1: Double; S2: PChar; R3: Double): Double; cdecl;
function LLoadHeightMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LoadHeightMap(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var LoadCubeTexture: function(R1: Double; R2: Double; S3: PChar): Double; cdecl;
function LLoadCubeTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LoadCubeTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var CreateTextureRenderTarget: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCreateTextureRenderTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateTextureRenderTarget(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CreateCubeTextureRenderTarget: function(R1: Double; R2: Double): Double; cdecl;
function LCreateCubeTextureRenderTarget(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateCubeTextureRenderTarget(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ReleaseTexture: function(R1: Double): Double; cdecl;
function LReleaseTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ReleaseTexture(lua_tonumber(L,1)));
  Result:=1;
end;
var LoadBackground: function(S1: PChar): Double; cdecl;
function LLoadBackground(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LoadBackground(lua_tostring(L,1)));
  Result:=1;
end;
var TransmitControllerInformation: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LTransmitControllerInformation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TransmitControllerInformation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SwitchView: function(): Double; cdecl;
function LSwitchView(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchView());
  Result:=1;
end;
var SetFilter: function(R1: Double; R2: Double): Double; cdecl;
function LSetFilter(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetFilter(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SetMipMapFilter: function(R1: Double; R2: Double): Double; cdecl;
function LSetMipMapFilter(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMipMapFilter(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SwitchWireFrameMode: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSwitchWireFrameMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchWireFrameMode(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SwitchAdditiveBlending: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSwitchAdditiveBlending(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchAdditiveBlending(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var UpdateCameraTransformation: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LUpdateCameraTransformation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,UpdateCameraTransformation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var UpdateCameraProjection: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LUpdateCameraProjection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,UpdateCameraProjection(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var DestroyCamera: function(R1: Double): Double; cdecl;
function LDestroyCamera(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyCamera(lua_tonumber(L,1)));
  Result:=1;
end;
var RenderToTexture: function(R1: Double): Double; cdecl;
function LRenderToTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,RenderToTexture(lua_tonumber(L,1)));
  Result:=1;
end;
var RenderToCubeTexture: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; cdecl;
function LRenderToCubeTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,RenderToCubeTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var SetOrtho: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetOrtho(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetOrtho(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var GetClippingPlaneSupport: function(): Double; cdecl;
function LGetClippingPlaneSupport(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetClippingPlaneSupport());
  Result:=1;
end;
var SetClippingPlane: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LSetClippingPlane(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetClippingPlane(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var SetObjectRoom: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetObjectRoom(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetObjectRoom(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CreatePortal: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; cdecl;
function LCreatePortal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreatePortal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var SetPortal: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double): Double; cdecl;
function LSetPortal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetPortal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9)));
  Result:=1;
end;
var OpenPortal: function(R1: Double; R2: Double): Double; cdecl;
function LOpenPortal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,OpenPortal(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DestroyPortal: function(R1: Double): Double; cdecl;
function LDestroyPortal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyPortal(lua_tonumber(L,1)));
  Result:=1;
end;
var SwitchPortalEngine: function(R1: Double; R2: Double): Double; cdecl;
function LSwitchPortalEngine(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchPortalEngine(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GetObjectRoom: function(R1: Double; R2: Double): Double; cdecl;
function LGetObjectRoom(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetObjectRoom(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GetRoomVisibility: function(R1: Double; R2: Double): Double; cdecl;
function LGetRoomVisibility(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetRoomVisibility(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SetRoomVisibility: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetRoomVisibility(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetRoomVisibility(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetRoomVisibilityEnforcement: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetRoomVisibilityEnforcement(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetRoomVisibilityEnforcement(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GetShadowSupport: function(): Double; cdecl;
function LGetShadowSupport(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetShadowSupport());
  Result:=1;
end;
var SwitchShadows: function(R1: Double; R2: Double): Double; cdecl;
function LSwitchShadows(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchShadows(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SwitchShadowCasting: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSwitchShadowCasting(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchShadowCasting(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CreateShadowOptimizedGeometry: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCreateShadowOptimizedGeometry(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateShadowOptimizedGeometry(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SwitchShadowReceiving: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSwitchShadowReceiving(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchShadowReceiving(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CreatePostScreenShader: function(S1: PChar; S2: PChar; R3: Double; R4: Double): Double; cdecl;
function LCreatePostScreenShader(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreatePostScreenShader(lua_tostring(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SetPSSTexture: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetPSSTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetPSSTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetPSSFilter: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetPSSFilter(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetPSSFilter(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetPSSVSConstant: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LSetPSSVSConstant(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetPSSVSConstant(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var SetPSSPSConstant: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LSetPSSPSConstant(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetPSSPSConstant(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var DestroyPostScreenShader: function(R1: Double): Double; cdecl;
function LDestroyPostScreenShader(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyPostScreenShader(lua_tonumber(L,1)));
  Result:=1;
end;
var SetMousePosition: function(R1: Double; R2: Double): Double; cdecl;
function LSetMousePosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMousePosition(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GetMousePositionX: function(): Double; cdecl;
function LGetMousePositionX(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetMousePositionX());
  Result:=1;
end;
var GetMousePositionY: function(): Double; cdecl;
function LGetMousePositionY(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetMousePositionY());
  Result:=1;
end;

var CreateWall: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LCreateWall(L: Plua_State): Integer; cdecl;
var res: Double;
begin
  res:=CreateWall(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10));
  if res > 0 then
  begin
    SetLength(u3dType,Length(u3dType)+1);
    SetLength(u3dIndex,Length(u3dIndex)+1);
    u3dType[Length(u3dType)]:=7;
    u3dIndex[Length(u3dIndex)]:=res;
    lua_pushnumber(L,Length(u3dType));
  end
  else lua_pushnumber(L,0);
  Result:=1;
end;

var CreateFloor: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double): Double; cdecl;
function LCreateFloor(L: Plua_State): Integer; cdecl;
var res: Double;
begin
  res:=CreateFloor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9));
  if res > 0 then
  begin
    SetLength(u3dType,Length(u3dType)+1);
    SetLength(u3dIndex,Length(u3dIndex)+1);
    u3dType[Length(u3dType)]:=8;
    u3dIndex[Length(u3dIndex)]:=res;
    lua_pushnumber(L,Length(u3dType));
  end
  else lua_pushnumber(L,0);
  Result:=1;
end;

var CreateCube: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LCreateCube(L: Plua_State): Integer; cdecl;
var res: Double;
begin
  TransmitDouble(lua_tonumber(L,12),lua_tonumber(L,13),lua_tonumber(L,14),lua_tonumber(L,15),lua_tonumber(L,16),lua_tonumber(L,17),0,0,0,0,0);
  res:=CreateCube(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11));
  if res > 0 then
  begin
    SetLength(u3dType,Length(u3dType)+1);
    SetLength(u3dIndex,Length(u3dIndex)+1);
    u3dType[Length(u3dType)]:=9;
    u3dIndex[Length(u3dIndex)]:=res;
    lua_pushnumber(L,Length(u3dType));
  end
  else lua_pushnumber(L,0);
  Result:=1;
end;

var CreateBillboard: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LCreateBillboard(L: Plua_State): Integer; cdecl;
var res: Double;
begin
  res:=CreateBillboard(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11));
  if res > 0 then
  begin
    SetLength(u3dType,Length(u3dType)+1);
    SetLength(u3dIndex,Length(u3dIndex)+1);
    u3dType[Length(u3dType)]:=11;
    u3dIndex[Length(u3dIndex)]:=res;
    lua_pushnumber(L,Length(u3dType));
  end
  else lua_pushnumber(L,0);
  Result:=1;
end;

var BeginPolygon: function(R1: Double): Double; cdecl;
function LBeginPolygon(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,BeginPolygon(lua_tonumber(L,1)));
  Result:=1;
end;
var AddVertex: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LAddVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;

var CreatePolygon: function(): Double; cdecl;
var res: Double;
function LCreatePolygon(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreatePolygon());
  if res > 0 then
  begin
    SetLength(u3dType,Length(u3dType)+1);
    SetLength(u3dIndex,Length(u3dIndex)+1);
    u3dType[Length(u3dType)]:=10;
    u3dIndex[Length(u3dIndex)]:=res;
    lua_pushnumber(L,Length(u3dType));
  end
  else lua_pushnumber(L,0);
  Result:=1;
end;

var SetVertex: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LSetVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var GetVertex: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LGetVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CreatePrimitiveFromModel: function(S1: PChar; S2: PChar; R3: Double): Double; cdecl;
function LCreatePrimitiveFromModel(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreatePrimitiveFromModel(lua_tostring(L,1),lua_tostring(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var TransformPrimitive: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LTransformPrimitive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TransformPrimitive(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11)));
  Result:=1;
end;
var SetMaterial: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetMaterialEmissive: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetMaterialEmissive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialEmissive(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DestroyPrimitive: function(R1: Double): Double; cdecl;
function LDestroyPrimitive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyPrimitive(lua_tonumber(L,1)));
  Result:=1;
end;
var ExportToU3DFile: function(R1: Double; S2: PChar; S3: PChar; R4: Double): Double; cdecl;
function LExportToU3DFile(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ExportToU3DFile(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var PreloadMesh: function(S1: PChar; S2: PChar): Double; cdecl;
function LPreloadMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,PreloadMesh(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var ReleaseModel: function(S1: PChar): Double; cdecl;
function LReleaseModel(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ReleaseModel(lua_tostring(L,1)));
  Result:=1;
end;
var LoadMesh: function(S1: PChar; S2: PChar): Double; cdecl;
function LLoadMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LoadMesh(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var CreateEmptyMesh: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCreateEmptyMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateEmptyMesh(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var AddFrame: function(R1: Double; S2: PChar; S3: PChar): Double; cdecl;
function LAddFrame(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddFrame(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var EnableVertexTweening: function(R1: Double): Double; cdecl;
function LEnableVertexTweening(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,EnableVertexTweening(lua_tonumber(L,1)));
  Result:=1;
end;
var ModelStep: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LModelStep(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ModelStep(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11)));
  Result:=1;
end;
var ModelSetFrame: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LModelSetFrame(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ModelSetFrame(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var GetCurrentFrame: function(R1: Double): Double; cdecl;
function LGetCurrentFrame(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetCurrentFrame(lua_tonumber(L,1)));
  Result:=1;
end;
var GetMaterialIndex: function(R1: Double; S2: PChar): Double; cdecl;
function LGetMaterialIndex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetMaterialIndex(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var GetModelMaterialCount: function(R1: Double): Double; cdecl;
function LGetModelMaterialCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetModelMaterialCount(lua_tonumber(L,1)));
  Result:=1;
end;
var SetModelMaterial: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LSetModelMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModelMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var SetModelMaterialEmissive: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetModelMaterialEmissive(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModelMaterialEmissive(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetModelMaterialSpecular: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LSetModelMaterialSpecular(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModelMaterialSpecular(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var LoadMaterialEffect: function(R1: Double; R2: Double; S3: PChar): Double; cdecl;
function LLoadMaterialEffect(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LoadMaterialEffect(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var CreateMaterialVSEffect: function(R1: Double; R2: Double; S3: PChar): Double; cdecl;
function LCreateMaterialVSEffect(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateMaterialVSEffect(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var SetMaterialEffectLightSource: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetMaterialEffectLightSource(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialEffectLightSource(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetMaterialEffectVSConstant: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LSetMaterialEffectVSConstant(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialEffectVSConstant(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var SetMaterialEffectPSConstant: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LSetMaterialEffectPSConstant(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialEffectPSConstant(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var SetMaterialStageTexture: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetMaterialStageTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialStageTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SetMaterialStageTexCoord: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetMaterialStageTexCoord(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialStageTexCoord(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SetMaterialStageTextureOperation: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetMaterialStageTextureOperation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialStageTextureOperation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SetMaterialEnvironmentMap: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetMaterialEnvironmentMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetMaterialEnvironmentMap(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SwitchAlphaBlending: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSwitchAlphaBlending(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchAlphaBlending(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SwitchBackgroundMode: function(R1: Double; R2: Double): Double; cdecl;
function LSwitchBackgroundMode(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SwitchBackgroundMode(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var RecalculateNormals: function(R1: Double): Double; cdecl;
function LRecalculateNormals(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,RecalculateNormals(lua_tonumber(L,1)));
  Result:=1;
end;
var SmoothNormals: function(R1: Double; R2: Double): Double; cdecl;
function LSmoothNormals(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SmoothNormals(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var AddInverseTangentSpaceMatrices: function(R1: Double): Double; cdecl;
function LAddInverseTangentSpaceMatrices(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddInverseTangentSpaceMatrices(lua_tonumber(L,1)));
  Result:=1;
end;
var ApplyCelShading: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LApplyCelShading(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ApplyCelShading(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var ApplyParallaxAndBumpMapping: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LApplyParallaxAndBumpMapping(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ApplyParallaxAndBumpMapping(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var CreateLODChain: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LCreateLODChain(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateLODChain(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11)));
  Result:=1;
end;
var GetModelMeshCount: function(R1: Double): Double; cdecl;
function LGetModelMeshCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetModelMeshCount(lua_tonumber(L,1)));
  Result:=1;
end;
var GetLockedMeshVertexCount: function(R1: Double): Double; cdecl;
function LGetLockedMeshVertexCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetLockedMeshVertexCount(lua_tonumber(L,1)));
  Result:=1;
end;
var GetLockedMeshTriangleCount: function(R1: Double): Double; cdecl;
function LGetLockedMeshTriangleCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetLockedMeshTriangleCount(lua_tonumber(L,1)));
  Result:=1;
end;
var AddTextureCoordinateSet: function(R1: Double; R2: Double): Double; cdecl;
function LAddTextureCoordinateSet(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddTextureCoordinateSet(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var AddTextureCoordinateSetsFromModel: function(R1: Double; S2: PChar; S3: PChar): Double; cdecl;
function LAddTextureCoordinateSetsFromModel(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddTextureCoordinateSetsFromModel(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var LockMesh: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LLockMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,LockMesh(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetLockedMeshVertex: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetLockedMeshVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetLockedMeshVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var GetLockedMeshVertex: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LGetLockedMeshVertex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetLockedMeshVertex(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetLockedMeshTriangle: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetLockedMeshTriangle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetLockedMeshTriangle(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var GetLockedMeshTriangle: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LGetLockedMeshTriangle(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetLockedMeshTriangle(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetLockedMeshTriangleMaterial: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetLockedMeshTriangleMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetLockedMeshTriangleMaterial(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GetLockedMeshTriangleMaterial: function(R1: Double; R2: Double): Double; cdecl;
function LGetLockedMeshTriangleMaterial(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetLockedMeshTriangleMaterial(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var UnlockMesh: function(R1: Double): Double; cdecl;
function LUnlockMesh(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,UnlockMesh(lua_tonumber(L,1)));
  Result:=1;
end;
var GetBoneIndex: function(R1: Double; S2: PChar): Double; cdecl;
function LGetBoneIndex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetBoneIndex(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var GetBoneCount: function(R1: Double): Double; cdecl;
function LGetBoneCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetBoneCount(lua_tonumber(L,1)));
  Result:=1;
end;
var GetBoneParent: function(R1: Double; R2: Double): Double; cdecl;
function LGetBoneParent(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetBoneParent(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var SetBoneRotation: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetBoneRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetBoneRotation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetBoneFrame: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetBoneFrame(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetBoneFrame(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var StartPoseInterpolation: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LStartPoseInterpolation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,StartPoseInterpolation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CopyAnimation: function(R1: Double; S2: PChar; S3: PChar; R4: Double): Double; cdecl;
function LCopyAnimation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CopyAnimation(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DestroyModel: function(R1: Double): Double; cdecl;
function LDestroyModel(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyModel(lua_tonumber(L,1)));
  Result:=1;
end;
var SetObjectSolidity: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetObjectSolidity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetObjectSolidity(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CheckSweptEllipsoidIntersection: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LCheckSweptEllipsoidIntersection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CheckSweptEllipsoidIntersection(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var GetTriangleIntersectionCount: function(): Double; cdecl;
function LGetTriangleIntersectionCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetTriangleIntersectionCount());
  Result:=1;
end;
var GetIntersectionTime: function(R1: Double): Double; cdecl;
function LGetIntersectionTime(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetIntersectionTime(lua_tonumber(L,1)));
  Result:=1;
end;
var GetIntersectionPosition: function(R1: Double; R2: Double): Double; cdecl;
function LGetIntersectionPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetIntersectionPosition(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GetIntersectedTriangleNormal: function(R1: Double; R2: Double): Double; cdecl;
function LGetIntersectedTriangleNormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetIntersectedTriangleNormal(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GetPushAwayVector: function(R1: Double; R2: Double): Double; cdecl;
function LGetPushAwayVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetPushAwayVector(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var AttemptMoveToPosition: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LAttemptMoveToPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AttemptMoveToPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var CheckRayIntersection: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; cdecl;
function LCheckRayIntersection(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CheckRayIntersection(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var CreateTerrain: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LCreateTerrain(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateTerrain(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var AddTerrainTexture: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; cdecl;
function LAddTerrainTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddTerrainTexture(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var ApplyTerrainTextures: function(R1: Double): Double; cdecl;
function LApplyTerrainTextures(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ApplyTerrainTextures(lua_tonumber(L,1)));
  Result:=1;
end;
var GetTerrainHeightAtPosition: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LGetTerrainHeightAtPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetTerrainHeightAtPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GetTextureStrengthAtPosition: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LGetTextureStrengthAtPosition(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetTextureStrengthAtPosition(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CalculateTerrainLightMap: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LCalculateTerrainLightMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateTerrainLightMap(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11)));
  Result:=1;
end;
var SetCustomTerrainLightMap: function(R1: Double; R2: Double): Double; cdecl;
function LSetCustomTerrainLightMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetCustomTerrainLightMap(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var DeformTerrain: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LDeformTerrain(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DeformTerrain(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SaveTerrainHeightMap: function(R1: Double; S2: PChar): Double; cdecl;
function LSaveTerrainHeightMap(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SaveTerrainHeightMap(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var DestroyTerrain: function(R1: Double): Double; cdecl;
function LDestroyTerrain(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyTerrain(lua_tonumber(L,1)));
  Result:=1;
end;
var CreateTerrainDecal: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LCreateTerrainDecal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateTerrainDecal(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CreateParticleSystem: function(): Double; cdecl;
function LCreateParticleSystem(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateParticleSystem());
  Result:=1;
end;
var ParticleSystemStep: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LParticleSystemStep(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ParticleSystemStep(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var SetParticleCount: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetParticleCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetParticleCount(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SetParticleLifetime: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetParticleLifetime(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetParticleLifetime(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetParticleOrigin: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; cdecl;
function LSetParticleOrigin(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetParticleOrigin(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var SetParticleVelocity: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LSetParticleVelocity(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetParticleVelocity(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var SetParticleAcceleration: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LSetParticleAcceleration(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetParticleAcceleration(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var SetInitialCenterRepulsion: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetInitialCenterRepulsion(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetInitialCenterRepulsion(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SetInitialParticleColor: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double): Double; cdecl;
function LSetInitialParticleColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetInitialParticleColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9)));
  Result:=1;
end;
var SetFinalParticleColor: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double): Double; cdecl;
function LSetFinalParticleColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetFinalParticleColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9)));
  Result:=1;
end;
var SetParticleSizeDevelopment: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetParticleSizeDevelopment(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetParticleSizeDevelopment(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetParticleRotation: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetParticleRotation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetParticleRotation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var AddGravityEmitter: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LAddGravityEmitter(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddGravityEmitter(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetGravityEmitter: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LSetGravityEmitter(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetGravityEmitter(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var AddModifier: function(R1: Double): Double; cdecl;
function LAddModifier(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,AddModifier(lua_tonumber(L,1)));
  Result:=1;
end;
var SetModifierEffectedArea: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetModifierEffectedArea(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModifierEffectedArea(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetModifierLifetimeChange: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LSetModifierLifetimeChange(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModifierLifetimeChange(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var SetModifierVelocityChange: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; cdecl;
function LSetModifierVelocityChange(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModifierVelocityChange(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var SetModifierAccelerationChange: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; cdecl;
function LSetModifierAccelerationChange(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModifierAccelerationChange(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var SetModifierNewFinalColor: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LSetModifierNewFinalColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModifierNewFinalColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var SetModifierNewFinalSize: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetModifierNewFinalSize(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetModifierNewFinalSize(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var DestroyParticleSystem: function(R1: Double): Double; cdecl;
function LDestroyParticleSystem(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyParticleSystem(lua_tonumber(L,1)));
  Result:=1;
end;
var SetFog: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetFog(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetFog(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var SetAmbientLight: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LSetAmbientLight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetAmbientLight(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CreateDirectionalLight: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double): Double; cdecl;
function LCreateDirectionalLight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateDirectionalLight(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8)));
  Result:=1;
end;
var CreatePointLight: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LCreatePointLight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreatePointLight(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var CreateSpotLight: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LCreateSpotLight(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateSpotLight(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var LightStep: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LLightStep(L: Plua_State): Integer; cdecl;
begin
  TransmitDouble(lua_tonumber(L,12),lua_tonumber(L,13),lua_tonumber(L,14),0,0,0,0,0,0,0,0);
  lua_pushnumber(L,LightStep(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11)));
  Result:=1;
end;
var DestroyLightSource: function(R1: Double): Double; cdecl;
function LDestroyLightSource(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DestroyLightSource(lua_tonumber(L,1)));
  Result:=1;
end;
var SetFont: function(R1: Double; S2: PChar; R3: Double; R4: Double): Double; cdecl;
function LSetFont(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetFont(lua_tonumber(L,1),lua_tostring(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var SetFontColor: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LSetFontColor(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,SetFontColor(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var DrawTextU3D: function(R1: Double; R2: Double; R3: Double; S4: PChar): Double; cdecl;
function LDrawTextU3D(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DrawTextU3D(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var DrawText3D: function(R1: Double; S2: PChar): Double; cdecl;
function LDrawText3D(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DrawText3D(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var DrawTexture: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LDrawTexture(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DrawTexture(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var DrawTextureEx: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double; R11: Double): Double; cdecl;
function LDrawTextureEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,DrawTextureEx(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10),lua_tonumber(L,11)));
  Result:=1;
end;
var TakeScreenshot: function(S1: PChar): Double; cdecl;
function LTakeScreenshot(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TakeScreenshot(lua_tostring(L,1)));
  Result:=1;
end;
var TakeScreenshotEx: function(S1: PChar): Double; cdecl;
function LTakeScreenshotEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TakeScreenshotEx(lua_tostring(L,1)));
  Result:=1;
end;
var CoordToScreen: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double): Double; cdecl;
function LCoordToScreen(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CoordToScreen(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5)));
  Result:=1;
end;
var ScreenCoordToVector: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LScreenCoordToVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ScreenCoordToVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CheckBoundingBoxVisibility: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LCheckBoundingBoxVisibility(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CheckBoundingBoxVisibility(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CreateTranslationScalingMatrix: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double): Double; cdecl;
function LCreateTranslationScalingMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateTranslationScalingMatrix(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7)));
  Result:=1;
end;
var CreateTransformationMatrix: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double; R7: Double; R8: Double; R9: Double; R10: Double): Double; cdecl;
function LCreateTransformationMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateTransformationMatrix(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6),lua_tonumber(L,7),lua_tonumber(L,8),lua_tonumber(L,9),lua_tonumber(L,10)));
  Result:=1;
end;
var GetBoneTransformationMatrix: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LGetBoneTransformationMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetBoneTransformationMatrix(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var GetMeshOcurrenceCount: function(R1: Double; R2: Double): Double; cdecl;
function LGetMeshOcurrenceCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetMeshOcurrenceCount(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GetMeshOccurrenceTransformation: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LGetMeshOccurrenceTransformation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetMeshOccurrenceTransformation(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var UpdateSkeleton: function(R1: Double): Double; cdecl;
function LUpdateSkeleton(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,UpdateSkeleton(lua_tonumber(L,1)));
  Result:=1;
end;
var CopyMatrix: function(R1: Double; R2: Double): Double; cdecl;
function LCopyMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CopyMatrix(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var TransformMatrix: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LTransformMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TransformMatrix(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var InvertMatrix: function(R1: Double; R2: Double): Double; cdecl;
function LInvertMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,InvertMatrix(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var InterpolateMatrices: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LInterpolateMatrices(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,InterpolateMatrices(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var GetMatrixEntry: function(R1: Double; R2: Double): Double; cdecl;
function LGetMatrixEntry(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetMatrixEntry(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ReleaseMatrix: function(R1: Double): Double; cdecl;
function LReleaseMatrix(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ReleaseMatrix(lua_tonumber(L,1)));
  Result:=1;
end;
var GetRayTracingNormal: function(R1: Double): Double; cdecl;
function LGetRayTracingNormal(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetRayTracingNormal(lua_tonumber(L,1)));
  Result:=1;
end;
var GetIntersectedMaterialIndex: function(): Double; cdecl;
function LGetIntersectedMaterialIndex(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetIntersectedMaterialIndex());
  Result:=1;
end;
var CreateVector: function(R1: Double; R2: Double; R3: Double; R4: Double): Double; cdecl;
function LCreateVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4)));
  Result:=1;
end;
var CreateDirectionVector: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCreateDirectionVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CreateDirectionVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CalculateVectorSum: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCalculateVectorSum(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateVectorSum(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CalculateVectorDifference: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCalculateVectorDifference(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateVectorDifference(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var CalculateVectorScalarProduct: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCalculateVectorScalarProduct(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateVectorScalarProduct(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var NormalizeVector: function(R1: Double): Double; cdecl;
function LNormalizeVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,NormalizeVector(lua_tonumber(L,1)));
  Result:=1;
end;
var CalculateVectorLength: function(R1: Double): Double; cdecl;
function LCalculateVectorLength(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateVectorLength(lua_tonumber(L,1)));
  Result:=1;
end;
var CalculateVectorLongitude: function(R1: Double): Double; cdecl;
function LCalculateVectorLongitude(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateVectorLongitude(lua_tonumber(L,1)));
  Result:=1;
end;
var CalculateVectorLatitude: function(R1: Double): Double; cdecl;
function LCalculateVectorLatitude(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateVectorLatitude(lua_tonumber(L,1)));
  Result:=1;
end;
var TransformVector: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LTransformVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TransformVector(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var TransformVectorEx: function(R1: Double; R2: Double; R3: Double; R4: Double; R5: Double; R6: Double): Double; cdecl;
function LTransformVectorEx(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,TransformVectorEx(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3),lua_tonumber(L,4),lua_tonumber(L,5),lua_tonumber(L,6)));
  Result:=1;
end;
var CalculateDotProduct: function(R1: Double; R2: Double): Double; cdecl;
function LCalculateDotProduct(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateDotProduct(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var CalculateCrossProduct: function(R1: Double; R2: Double; R3: Double): Double; cdecl;
function LCalculateCrossProduct(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,CalculateCrossProduct(lua_tonumber(L,1),lua_tonumber(L,2),lua_tonumber(L,3)));
  Result:=1;
end;
var ComputeMatrixTranslation: function(R1: Double; R2: Double): Double; cdecl;
function LComputeMatrixTranslation(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ComputeMatrixTranslation(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ComputeMatrixScaling: function(R1: Double; R2: Double): Double; cdecl;
function LComputeMatrixScaling(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ComputeMatrixScaling(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ComputeMatrixRotationAngles: function(R1: Double; R2: Double): Double; cdecl;
function LComputeMatrixRotationAngles(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ComputeMatrixRotationAngles(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var GetVector: function(R1: Double; R2: Double): Double; cdecl;
function LGetVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,GetVector(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var ReleaseVector: function(R1: Double): Double; cdecl;
function LReleaseVector(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ReleaseVector(lua_tonumber(L,1)));
  Result:=1;
end;

function LInit_Ultimate3D(L: Plua_State): Integer; cdecl;
var dll: THandle;
begin

  dll:=GetModuleHandle(lua_tostring(L,1));
  if dll = 0 then dll:=LoadLibrary(lua_tostring(L,1));

  @TransmitString:=getProcAddress(dll,'TransmitString');
  @TransmitDouble:=getProcAddress(dll,'TransmitDouble');
  @InitUltimate3D:=getProcAddress(dll,'InitUltimate3D');
  @Cleanup:=getProcAddress(dll,'Cleanup');
  @GetSupportedPSVersion:=getProcAddress(dll,'GetSupportedPSVersion');
  @GetCubeMapSupport:=getProcAddress(dll,'GetCubeMapSupport');
  @GetSimultaneousTextureCount:=getProcAddress(dll,'GetSimultaneousTextureCount');
  @GetDrawnTriangleCount:=getProcAddress(dll,'GetDrawnTriangleCount');
  @GetDrawCallCount:=getProcAddress(dll,'GetDrawCallCount');
  @Render:=getProcAddress(dll,'Render');
  @Present:=getProcAddress(dll,'Present');
  @SetMipMapCount:=getProcAddress(dll,'SetMipMapCount');
  @SetTexturePath:=getProcAddress(dll,'SetTexturePath');
  @LoadTexture:=getProcAddress(dll,'LoadTexture');
  @LoadHeightMap:=getProcAddress(dll,'LoadHeightMap');
  @LoadCubeTexture:=getProcAddress(dll,'LoadCubeTexture');
  @CreateTextureRenderTarget:=getProcAddress(dll,'CreateTextureRenderTarget');
  @CreateCubeTextureRenderTarget:=getProcAddress(dll,'CreateCubeTextureRenderTarget');
  @ReleaseTexture:=getProcAddress(dll,'ReleaseTexture');
  @LoadBackground:=getProcAddress(dll,'LoadBackground');
  @TransmitControllerInformation:=getProcAddress(dll,'TransmitControllerInformation');
  @SwitchView:=getProcAddress(dll,'SwitchView');
  @SetFilter:=getProcAddress(dll,'SetFilter');
  @SetMipMapFilter:=getProcAddress(dll,'SetMipMapFilter');
  @SwitchWireFrameMode:=getProcAddress(dll,'SwitchWireFrameMode');
  @SwitchAdditiveBlending:=getProcAddress(dll,'SwitchAdditiveBlending');
  @UpdateCameraTransformation:=getProcAddress(dll,'UpdateCameraTransformation');
  @UpdateCameraProjection:=getProcAddress(dll,'UpdateCameraProjection');
  @DestroyCamera:=getProcAddress(dll,'DestroyCamera');
  @RenderToTexture:=getProcAddress(dll,'RenderToTexture');
  @RenderToCubeTexture:=getProcAddress(dll,'RenderToCubeTexture');
  @SetOrtho:=getProcAddress(dll,'SetOrtho');
  @GetClippingPlaneSupport:=getProcAddress(dll,'GetClippingPlaneSupport');
  @SetClippingPlane:=getProcAddress(dll,'SetClippingPlane');
  @SetObjectRoom:=getProcAddress(dll,'SetObjectRoom');
  @CreatePortal:=getProcAddress(dll,'CreatePortal');
  @SetPortal:=getProcAddress(dll,'SetPortal');
  @OpenPortal:=getProcAddress(dll,'OpenPortal');
  @DestroyPortal:=getProcAddress(dll,'DestroyPortal');
  @SwitchPortalEngine:=getProcAddress(dll,'SwitchPortalEngine');
  @GetObjectRoom:=getProcAddress(dll,'GetObjectRoom');
  @GetRoomVisibility:=getProcAddress(dll,'GetRoomVisibility');
  @SetRoomVisibility:=getProcAddress(dll,'SetRoomVisibility');
  @SetRoomVisibilityEnforcement:=getProcAddress(dll,'SetRoomVisibilityEnforcement');
  @GetShadowSupport:=getProcAddress(dll,'GetShadowSupport');
  @SwitchShadows:=getProcAddress(dll,'SwitchShadows');
  @SwitchShadowCasting:=getProcAddress(dll,'SwitchShadowCasting');
  @CreateShadowOptimizedGeometry:=getProcAddress(dll,'CreateShadowOptimizedGeometry');
  @SwitchShadowReceiving:=getProcAddress(dll,'SwitchShadowReceiving');
  @CreatePostScreenShader:=getProcAddress(dll,'CreatePostScreenShader');
  @SetPSSTexture:=getProcAddress(dll,'SetPSSTexture');
  @SetPSSFilter:=getProcAddress(dll,'SetPSSFilter');
  @SetPSSVSConstant:=getProcAddress(dll,'SetPSSVSConstant');
  @SetPSSPSConstant:=getProcAddress(dll,'SetPSSPSConstant');
  @DestroyPostScreenShader:=getProcAddress(dll,'DestroyPostScreenShader');
  @SetMousePosition:=getProcAddress(dll,'SetMousePosition');
  @GetMousePositionX:=getProcAddress(dll,'GetMousePositionX');
  @GetMousePositionY:=getProcAddress(dll,'GetMousePositionY');
  @CreateWall:=getProcAddress(dll,'CreateWall');
  @CreateFloor:=getProcAddress(dll,'CreateFloor');
  @CreateCube:=getProcAddress(dll,'CreateCube');
  @CreateBillboard:=getProcAddress(dll,'CreateBillboard');
  @BeginPolygon:=getProcAddress(dll,'BeginPolygon');
  @AddVertex:=getProcAddress(dll,'AddVertex');
  @CreatePolygon:=getProcAddress(dll,'CreatePolygon');
  @SetVertex:=getProcAddress(dll,'SetVertex');
  @GetVertex:=getProcAddress(dll,'GetVertex');
  @CreatePrimitiveFromModel:=getProcAddress(dll,'CreatePrimitiveFromModel');
  @TransformPrimitive:=getProcAddress(dll,'TransformPrimitive');
  @SetMaterial:=getProcAddress(dll,'SetMaterial');
  @SetMaterialEmissive:=getProcAddress(dll,'SetMaterialEmissive');
  @DestroyPrimitive:=getProcAddress(dll,'DestroyPrimitive');
  @ExportToU3DFile:=getProcAddress(dll,'ExportToU3DFile');
  @PreloadMesh:=getProcAddress(dll,'PreloadMesh');
  @ReleaseModel:=getProcAddress(dll,'ReleaseModel');
  @LoadMesh:=getProcAddress(dll,'LoadMesh');
  @CreateEmptyMesh:=getProcAddress(dll,'CreateEmptyMesh');
  @AddFrame:=getProcAddress(dll,'AddFrame');
  @EnableVertexTweening:=getProcAddress(dll,'EnableVertexTweening');
  @ModelStep:=getProcAddress(dll,'ModelStep');
  @ModelSetFrame:=getProcAddress(dll,'ModelSetFrame');
  @GetCurrentFrame:=getProcAddress(dll,'GetCurrentFrame');
  @GetMaterialIndex:=getProcAddress(dll,'GetMaterialIndex');
  @GetModelMaterialCount:=getProcAddress(dll,'GetModelMaterialCount');
  @SetModelMaterial:=getProcAddress(dll,'SetModelMaterial');
  @SetModelMaterialEmissive:=getProcAddress(dll,'SetModelMaterialEmissive');
  @SetModelMaterialSpecular:=getProcAddress(dll,'SetModelMaterialSpecular');
  @LoadMaterialEffect:=getProcAddress(dll,'LoadMaterialEffect');
  @CreateMaterialVSEffect:=getProcAddress(dll,'CreateMaterialVSEffect');
  @SetMaterialEffectLightSource:=getProcAddress(dll,'SetMaterialEffectLightSource');
  @SetMaterialEffectVSConstant:=getProcAddress(dll,'SetMaterialEffectVSConstant');
  @SetMaterialEffectPSConstant:=getProcAddress(dll,'SetMaterialEffectPSConstant');
  @SetMaterialStageTexture:=getProcAddress(dll,'SetMaterialStageTexture');
  @SetMaterialStageTexCoord:=getProcAddress(dll,'SetMaterialStageTexCoord');
  @SetMaterialStageTextureOperation:=getProcAddress(dll,'SetMaterialStageTextureOperation');
  @SetMaterialEnvironmentMap:=getProcAddress(dll,'SetMaterialEnvironmentMap');
  @SwitchAlphaBlending:=getProcAddress(dll,'SwitchAlphaBlending');
  @SwitchBackgroundMode:=getProcAddress(dll,'SwitchBackgroundMode');
  @RecalculateNormals:=getProcAddress(dll,'RecalculateNormals');
  @SmoothNormals:=getProcAddress(dll,'SmoothNormals');
  @AddInverseTangentSpaceMatrices:=getProcAddress(dll,'AddInverseTangentSpaceMatrices');
  @ApplyCelShading:=getProcAddress(dll,'ApplyCelShading');
  @ApplyParallaxAndBumpMapping:=getProcAddress(dll,'ApplyParallaxAndBumpMapping');
  @CreateLODChain:=getProcAddress(dll,'CreateLODChain');
  @GetModelMeshCount:=getProcAddress(dll,'GetModelMeshCount');
  @GetLockedMeshVertexCount:=getProcAddress(dll,'GetLockedMeshVertexCount');
  @GetLockedMeshTriangleCount:=getProcAddress(dll,'GetLockedMeshTriangleCount');
  @AddTextureCoordinateSet:=getProcAddress(dll,'AddTextureCoordinateSet');
  @AddTextureCoordinateSetsFromModel:=getProcAddress(dll,'AddTextureCoordinateSetsFromModel');
  @LockMesh:=getProcAddress(dll,'LockMesh');
  @SetLockedMeshVertex:=getProcAddress(dll,'SetLockedMeshVertex');
  @GetLockedMeshVertex:=getProcAddress(dll,'GetLockedMeshVertex');
  @SetLockedMeshTriangle:=getProcAddress(dll,'SetLockedMeshTriangle');
  @GetLockedMeshTriangle:=getProcAddress(dll,'GetLockedMeshTriangle');
  @SetLockedMeshTriangleMaterial:=getProcAddress(dll,'SetLockedMeshTriangleMaterial');
  @GetLockedMeshTriangleMaterial:=getProcAddress(dll,'GetLockedMeshTriangleMaterial');
  @UnlockMesh:=getProcAddress(dll,'UnlockMesh');
  @GetBoneIndex:=getProcAddress(dll,'GetBoneIndex');
  @GetBoneCount:=getProcAddress(dll,'GetBoneCount');
  @GetBoneParent:=getProcAddress(dll,'GetBoneParent');
  @SetBoneRotation:=getProcAddress(dll,'SetBoneRotation');
  @SetBoneFrame:=getProcAddress(dll,'SetBoneFrame');
  @StartPoseInterpolation:=getProcAddress(dll,'StartPoseInterpolation');
  @CopyAnimation:=getProcAddress(dll,'CopyAnimation');
  @DestroyModel:=getProcAddress(dll,'DestroyModel');
  @SetObjectSolidity:=getProcAddress(dll,'SetObjectSolidity');
  @CheckSweptEllipsoidIntersection:=getProcAddress(dll,'CheckSweptEllipsoidIntersection');
  @GetTriangleIntersectionCount:=getProcAddress(dll,'GetTriangleIntersectionCount');
  @GetIntersectionTime:=getProcAddress(dll,'GetIntersectionTime');
  @GetIntersectionPosition:=getProcAddress(dll,'GetIntersectionPosition');
  @GetIntersectedTriangleNormal:=getProcAddress(dll,'GetIntersectedTriangleNormal');
  @GetPushAwayVector:=getProcAddress(dll,'GetPushAwayVector');
  @AttemptMoveToPosition:=getProcAddress(dll,'AttemptMoveToPosition');
  @CheckRayIntersection:=getProcAddress(dll,'CheckRayIntersection');
  @CreateTerrain:=getProcAddress(dll,'CreateTerrain');
  @AddTerrainTexture:=getProcAddress(dll,'AddTerrainTexture');
  @ApplyTerrainTextures:=getProcAddress(dll,'ApplyTerrainTextures');
  @GetTerrainHeightAtPosition:=getProcAddress(dll,'GetTerrainHeightAtPosition');
  @GetTextureStrengthAtPosition:=getProcAddress(dll,'GetTextureStrengthAtPosition');
  @CalculateTerrainLightMap:=getProcAddress(dll,'CalculateTerrainLightMap');
  @SetCustomTerrainLightMap:=getProcAddress(dll,'SetCustomTerrainLightMap');
  @DeformTerrain:=getProcAddress(dll,'DeformTerrain');
  @SaveTerrainHeightMap:=getProcAddress(dll,'SaveTerrainHeightMap');
  @DestroyTerrain:=getProcAddress(dll,'DestroyTerrain');
  @CreateTerrainDecal:=getProcAddress(dll,'CreateTerrainDecal');
  @CreateParticleSystem:=getProcAddress(dll,'CreateParticleSystem');
  @ParticleSystemStep:=getProcAddress(dll,'ParticleSystemStep');
  @SetParticleCount:=getProcAddress(dll,'SetParticleCount');
  @SetParticleLifetime:=getProcAddress(dll,'SetParticleLifetime');
  @SetParticleOrigin:=getProcAddress(dll,'SetParticleOrigin');
  @SetParticleVelocity:=getProcAddress(dll,'SetParticleVelocity');
  @SetParticleAcceleration:=getProcAddress(dll,'SetParticleAcceleration');
  @SetInitialCenterRepulsion:=getProcAddress(dll,'SetInitialCenterRepulsion');
  @SetInitialParticleColor:=getProcAddress(dll,'SetInitialParticleColor');
  @SetFinalParticleColor:=getProcAddress(dll,'SetFinalParticleColor');
  @SetParticleSizeDevelopment:=getProcAddress(dll,'SetParticleSizeDevelopment');
  @SetParticleRotation:=getProcAddress(dll,'SetParticleRotation');
  @AddGravityEmitter:=getProcAddress(dll,'AddGravityEmitter');
  @SetGravityEmitter:=getProcAddress(dll,'SetGravityEmitter');
  @AddModifier:=getProcAddress(dll,'AddModifier');
  @SetModifierEffectedArea:=getProcAddress(dll,'SetModifierEffectedArea');
  @SetModifierLifetimeChange:=getProcAddress(dll,'SetModifierLifetimeChange');
  @SetModifierVelocityChange:=getProcAddress(dll,'SetModifierVelocityChange');
  @SetModifierAccelerationChange:=getProcAddress(dll,'SetModifierAccelerationChange');
  @SetModifierNewFinalColor:=getProcAddress(dll,'SetModifierNewFinalColor');
  @SetModifierNewFinalSize:=getProcAddress(dll,'SetModifierNewFinalSize');
  @DestroyParticleSystem:=getProcAddress(dll,'DestroyParticleSystem');
  @SetFog:=getProcAddress(dll,'SetFog');
  @SetAmbientLight:=getProcAddress(dll,'SetAmbientLight');
  @CreateDirectionalLight:=getProcAddress(dll,'CreateDirectionalLight');
  @CreatePointLight:=getProcAddress(dll,'CreatePointLight');
  @CreateSpotLight:=getProcAddress(dll,'CreateSpotLight');
  @LightStep:=getProcAddress(dll,'LightStep');
  @DestroyLightSource:=getProcAddress(dll,'DestroyLightSource');
  @SetFont:=getProcAddress(dll,'SetFont');
  @SetFontColor:=getProcAddress(dll,'SetFontColor');
  @DrawTextU3D:=getProcAddress(dll,'DrawTextU3D');
  @DrawText3D:=getProcAddress(dll,'DrawText3D');
  @DrawTexture:=getProcAddress(dll,'DrawTexture');
  @DrawTextureEx:=getProcAddress(dll,'DrawTextureEx');
  @TakeScreenshot:=getProcAddress(dll,'TakeScreenshot');
  @TakeScreenshotEx:=getProcAddress(dll,'TakeScreenshotEx');
  @CoordToScreen:=getProcAddress(dll,'CoordToScreen');
  @ScreenCoordToVector:=getProcAddress(dll,'ScreenCoordToVector');
  @CheckBoundingBoxVisibility:=getProcAddress(dll,'CheckBoundingBoxVisibility');
  @CreateTranslationScalingMatrix:=getProcAddress(dll,'CreateTranslationScalingMatrix');
  @CreateTransformationMatrix:=getProcAddress(dll,'CreateTransformationMatrix');
  @GetBoneTransformationMatrix:=getProcAddress(dll,'GetBoneTransformationMatrix');
  @GetMeshOcurrenceCount:=getProcAddress(dll,'GetMeshOcurrenceCount');
  @GetMeshOccurrenceTransformation:=getProcAddress(dll,'GetMeshOccurrenceTransformation');
  @UpdateSkeleton:=getProcAddress(dll,'UpdateSkeleton');
  @CopyMatrix:=getProcAddress(dll,'CopyMatrix');
  @TransformMatrix:=getProcAddress(dll,'TransformMatrix');
  @InvertMatrix:=getProcAddress(dll,'InvertMatrix');
  @InterpolateMatrices:=getProcAddress(dll,'InterpolateMatrices');
  @GetMatrixEntry:=getProcAddress(dll,'GetMatrixEntry');
  @ReleaseMatrix:=getProcAddress(dll,'ReleaseMatrix');
  @GetRayTracingNormal:=getProcAddress(dll,'GetRayTracingNormal');
  @GetIntersectedMaterialIndex:=getProcAddress(dll,'GetIntersectedMaterialIndex');
  @CreateVector:=getProcAddress(dll,'CreateVector');
  @CreateDirectionVector:=getProcAddress(dll,'CreateDirectionVector');
  @CalculateVectorSum:=getProcAddress(dll,'CalculateVectorSum');
  @CalculateVectorDifference:=getProcAddress(dll,'CalculateVectorDifference');
  @CalculateVectorScalarProduct:=getProcAddress(dll,'CalculateVectorScalarProduct');
  @NormalizeVector:=getProcAddress(dll,'NormalizeVector');
  @CalculateVectorLength:=getProcAddress(dll,'CalculateVectorLength');
  @CalculateVectorLongitude:=getProcAddress(dll,'CalculateVectorLongitude');
  @CalculateVectorLatitude:=getProcAddress(dll,'CalculateVectorLatitude');
  @TransformVector:=getProcAddress(dll,'TransformVector');
  @TransformVectorEx:=getProcAddress(dll,'TransformVectorEx');
  @CalculateDotProduct:=getProcAddress(dll,'CalculateDotProduct');
  @CalculateCrossProduct:=getProcAddress(dll,'CalculateCrossProduct');
  @ComputeMatrixTranslation:=getProcAddress(dll,'ComputeMatrixTranslation');
  @ComputeMatrixScaling:=getProcAddress(dll,'ComputeMatrixScaling');
  @ComputeMatrixRotationAngles:=getProcAddress(dll,'ComputeMatrixRotationAngles');
  @GetVector:=getProcAddress(dll,'GetVector');
  @ReleaseVector:=getProcAddress(dll,'ReleaseVector');

  //lua_register(L,'TransmitString',@LTransmitString);
  //lua_register(L,'TransmitDouble',@LTransmitDouble);
  lua_register(L,'InitUltimate3D',@LInitUltimate3D);
  lua_register(L,'Cleanup',@LCleanup);
  lua_register(L,'GetSupportedPSVersion',@LGetSupportedPSVersion);
  lua_register(L,'GetCubeMapSupport',@LGetCubeMapSupport);
  lua_register(L,'GetSimultaneousTextureCount',@LGetSimultaneousTextureCount);
  lua_register(L,'GetDrawnTriangleCount',@LGetDrawnTriangleCount);
  lua_register(L,'GetDrawCallCount',@LGetDrawCallCount);
  lua_register(L,'Render',@LRender);
  lua_register(L,'Present',@LPresent);
  lua_register(L,'SetMipMapCount',@LSetMipMapCount);
  lua_register(L,'SetTexturePath',@LSetTexturePath);
  lua_register(L,'LoadTexture',@LLoadTexture);
  lua_register(L,'LoadHeightMap',@LLoadHeightMap);
  lua_register(L,'LoadCubeTexture',@LLoadCubeTexture);
  lua_register(L,'CreateTextureRenderTarget',@LCreateTextureRenderTarget);
  lua_register(L,'CreateCubeTextureRenderTarget',@LCreateCubeTextureRenderTarget);
  lua_register(L,'ReleaseTexture',@LReleaseTexture);
  lua_register(L,'LoadBackground',@LLoadBackground);
  lua_register(L,'TransmitControllerInformation',@LTransmitControllerInformation);
  lua_register(L,'SwitchView',@LSwitchView);
  lua_register(L,'SetFilter',@LSetFilter);
  lua_register(L,'SetMipMapFilter',@LSetMipMapFilter);
  lua_register(L,'SwitchWireFrameMode',@LSwitchWireFrameMode);
  lua_register(L,'SwitchAdditiveBlending',@LSwitchAdditiveBlending);
  lua_register(L,'UpdateCameraTransformation',@LUpdateCameraTransformation);
  lua_register(L,'UpdateCameraProjection',@LUpdateCameraProjection);
  lua_register(L,'DestroyCamera',@LDestroyCamera);
  lua_register(L,'RenderToTexture',@LRenderToTexture);
  lua_register(L,'RenderToCubeTexture',@LRenderToCubeTexture);
  lua_register(L,'SetOrtho',@LSetOrtho);
  lua_register(L,'GetClippingPlaneSupport',@LGetClippingPlaneSupport);
  lua_register(L,'SetClippingPlane',@LSetClippingPlane);
  lua_register(L,'SetObjectRoom',@LSetObjectRoom);
  lua_register(L,'CreatePortal',@LCreatePortal);
  lua_register(L,'SetPortal',@LSetPortal);
  lua_register(L,'OpenPortal',@LOpenPortal);
  lua_register(L,'DestroyPortal',@LDestroyPortal);
  lua_register(L,'SwitchPortalEngine',@LSwitchPortalEngine);
  lua_register(L,'GetObjectRoom',@LGetObjectRoom);
  lua_register(L,'GetRoomVisibility',@LGetRoomVisibility);
  lua_register(L,'SetRoomVisibility',@LSetRoomVisibility);
  lua_register(L,'SetRoomVisibilityEnforcement',@LSetRoomVisibilityEnforcement);
  lua_register(L,'GetShadowSupport',@LGetShadowSupport);
  lua_register(L,'SwitchShadows',@LSwitchShadows);
  lua_register(L,'SwitchShadowCasting',@LSwitchShadowCasting);
  lua_register(L,'CreateShadowOptimizedGeometry',@LCreateShadowOptimizedGeometry);
  lua_register(L,'SwitchShadowReceiving',@LSwitchShadowReceiving);
  lua_register(L,'CreatePostScreenShader',@LCreatePostScreenShader);
  lua_register(L,'SetPSSTexture',@LSetPSSTexture);
  lua_register(L,'SetPSSFilter',@LSetPSSFilter);
  lua_register(L,'SetPSSVSConstant',@LSetPSSVSConstant);
  lua_register(L,'SetPSSPSConstant',@LSetPSSPSConstant);
  lua_register(L,'DestroyPostScreenShader',@LDestroyPostScreenShader);
  lua_register(L,'SetMousePosition',@LSetMousePosition);
  lua_register(L,'GetMousePositionX',@LGetMousePositionX);
  lua_register(L,'GetMousePositionY',@LGetMousePositionY);
  lua_register(L,'CreateWall',@LCreateWall);
  lua_register(L,'CreateFloor',@LCreateFloor);
  lua_register(L,'CreateCube',@LCreateCube);
  lua_register(L,'CreateBillboard',@LCreateBillboard);
  lua_register(L,'BeginPolygon',@LBeginPolygon);
  lua_register(L,'AddVertex',@LAddVertex);
  lua_register(L,'CreatePolygon',@LCreatePolygon);
  lua_register(L,'SetVertex',@LSetVertex);
  lua_register(L,'GetVertex',@LGetVertex);
  lua_register(L,'CreatePrimitiveFromModel',@LCreatePrimitiveFromModel);
  lua_register(L,'TransformPrimitive',@LTransformPrimitive);
  lua_register(L,'SetMaterial',@LSetMaterial);
  lua_register(L,'SetMaterialEmissive',@LSetMaterialEmissive);
  lua_register(L,'DestroyPrimitive',@LDestroyPrimitive);
  lua_register(L,'ExportToU3DFile',@LExportToU3DFile);
  lua_register(L,'PreloadMesh',@LPreloadMesh);
  lua_register(L,'ReleaseModel',@LReleaseModel);
  lua_register(L,'LoadMesh',@LLoadMesh);
  lua_register(L,'CreateEmptyMesh',@LCreateEmptyMesh);
  lua_register(L,'AddFrame',@LAddFrame);
  lua_register(L,'EnableVertexTweening',@LEnableVertexTweening);
  lua_register(L,'ModelStep',@LModelStep);
  lua_register(L,'ModelSetFrame',@LModelSetFrame);
  lua_register(L,'GetCurrentFrame',@LGetCurrentFrame);
  lua_register(L,'GetMaterialIndex',@LGetMaterialIndex);
  lua_register(L,'GetModelMaterialCount',@LGetModelMaterialCount);
  lua_register(L,'SetModelMaterial',@LSetModelMaterial);
  lua_register(L,'SetModelMaterialEmissive',@LSetModelMaterialEmissive);
  lua_register(L,'SetModelMaterialSpecular',@LSetModelMaterialSpecular);
  lua_register(L,'LoadMaterialEffect',@LLoadMaterialEffect);
  lua_register(L,'CreateMaterialVSEffect',@LCreateMaterialVSEffect);
  lua_register(L,'SetMaterialEffectLightSource',@LSetMaterialEffectLightSource);
  lua_register(L,'SetMaterialEffectVSConstant',@LSetMaterialEffectVSConstant);
  lua_register(L,'SetMaterialEffectPSConstant',@LSetMaterialEffectPSConstant);
  lua_register(L,'SetMaterialStageTexture',@LSetMaterialStageTexture);
  lua_register(L,'SetMaterialStageTexCoord',@LSetMaterialStageTexCoord);
  lua_register(L,'SetMaterialStageTextureOperation',@LSetMaterialStageTextureOperation);
  lua_register(L,'SetMaterialEnvironmentMap',@LSetMaterialEnvironmentMap);
  lua_register(L,'SwitchAlphaBlending',@LSwitchAlphaBlending);
  lua_register(L,'SwitchBackgroundMode',@LSwitchBackgroundMode);
  lua_register(L,'RecalculateNormals',@LRecalculateNormals);
  lua_register(L,'SmoothNormals',@LSmoothNormals);
  lua_register(L,'AddInverseTangentSpaceMatrices',@LAddInverseTangentSpaceMatrices);
  lua_register(L,'ApplyCelShading',@LApplyCelShading);
  lua_register(L,'ApplyParallaxAndBumpMapping',@LApplyParallaxAndBumpMapping);
  lua_register(L,'CreateLODChain',@LCreateLODChain);
  lua_register(L,'GetModelMeshCount',@LGetModelMeshCount);
  lua_register(L,'GetLockedMeshVertexCount',@LGetLockedMeshVertexCount);
  lua_register(L,'GetLockedMeshTriangleCount',@LGetLockedMeshTriangleCount);
  lua_register(L,'AddTextureCoordinateSet',@LAddTextureCoordinateSet);
  lua_register(L,'AddTextureCoordinateSetsFromModel',@LAddTextureCoordinateSetsFromModel);
  lua_register(L,'LockMesh',@LLockMesh);
  lua_register(L,'SetLockedMeshVertex',@LSetLockedMeshVertex);
  lua_register(L,'GetLockedMeshVertex',@LGetLockedMeshVertex);
  lua_register(L,'SetLockedMeshTriangle',@LSetLockedMeshTriangle);
  lua_register(L,'GetLockedMeshTriangle',@LGetLockedMeshTriangle);
  lua_register(L,'SetLockedMeshTriangleMaterial',@LSetLockedMeshTriangleMaterial);
  lua_register(L,'GetLockedMeshTriangleMaterial',@LGetLockedMeshTriangleMaterial);
  lua_register(L,'UnlockMesh',@LUnlockMesh);
  lua_register(L,'GetBoneIndex',@LGetBoneIndex);
  lua_register(L,'GetBoneCount',@LGetBoneCount);
  lua_register(L,'GetBoneParent',@LGetBoneParent);
  lua_register(L,'SetBoneRotation',@LSetBoneRotation);
  lua_register(L,'SetBoneFrame',@LSetBoneFrame);
  lua_register(L,'StartPoseInterpolation',@LStartPoseInterpolation);
  lua_register(L,'CopyAnimation',@LCopyAnimation);
  lua_register(L,'DestroyModel',@LDestroyModel);
  lua_register(L,'SetObjectSolidity',@LSetObjectSolidity);
  lua_register(L,'CheckSweptEllipsoidIntersection',@LCheckSweptEllipsoidIntersection);
  lua_register(L,'GetTriangleIntersectionCount',@LGetTriangleIntersectionCount);
  lua_register(L,'GetIntersectionTime',@LGetIntersectionTime);
  lua_register(L,'GetIntersectionPosition',@LGetIntersectionPosition);
  lua_register(L,'GetIntersectedTriangleNormal',@LGetIntersectedTriangleNormal);
  lua_register(L,'GetPushAwayVector',@LGetPushAwayVector);
  lua_register(L,'AttemptMoveToPosition',@LAttemptMoveToPosition);
  lua_register(L,'CheckRayIntersection',@LCheckRayIntersection);
  lua_register(L,'CreateTerrain',@LCreateTerrain);
  lua_register(L,'AddTerrainTexture',@LAddTerrainTexture);
  lua_register(L,'ApplyTerrainTextures',@LApplyTerrainTextures);
  lua_register(L,'GetTerrainHeightAtPosition',@LGetTerrainHeightAtPosition);
  lua_register(L,'GetTextureStrengthAtPosition',@LGetTextureStrengthAtPosition);
  lua_register(L,'CalculateTerrainLightMap',@LCalculateTerrainLightMap);
  lua_register(L,'SetCustomTerrainLightMap',@LSetCustomTerrainLightMap);
  lua_register(L,'DeformTerrain',@LDeformTerrain);
  lua_register(L,'SaveTerrainHeightMap',@LSaveTerrainHeightMap);
  lua_register(L,'DestroyTerrain',@LDestroyTerrain);
  lua_register(L,'CreateTerrainDecal',@LCreateTerrainDecal);
  lua_register(L,'CreateParticleSystem',@LCreateParticleSystem);
  lua_register(L,'ParticleSystemStep',@LParticleSystemStep);
  lua_register(L,'SetParticleCount',@LSetParticleCount);
  lua_register(L,'SetParticleLifetime',@LSetParticleLifetime);
  lua_register(L,'SetParticleOrigin',@LSetParticleOrigin);
  lua_register(L,'SetParticleVelocity',@LSetParticleVelocity);
  lua_register(L,'SetParticleAcceleration',@LSetParticleAcceleration);
  lua_register(L,'SetInitialCenterRepulsion',@LSetInitialCenterRepulsion);
  lua_register(L,'SetInitialParticleColor',@LSetInitialParticleColor);
  lua_register(L,'SetFinalParticleColor',@LSetFinalParticleColor);
  lua_register(L,'SetParticleSizeDevelopment',@LSetParticleSizeDevelopment);
  lua_register(L,'SetParticleRotation',@LSetParticleRotation);
  lua_register(L,'AddGravityEmitter',@LAddGravityEmitter);
  lua_register(L,'SetGravityEmitter',@LSetGravityEmitter);
  lua_register(L,'AddModifier',@LAddModifier);
  lua_register(L,'SetModifierEffectedArea',@LSetModifierEffectedArea);
  lua_register(L,'SetModifierLifetimeChange',@LSetModifierLifetimeChange);
  lua_register(L,'SetModifierVelocityChange',@LSetModifierVelocityChange);
  lua_register(L,'SetModifierAccelerationChange',@LSetModifierAccelerationChange);
  lua_register(L,'SetModifierNewFinalColor',@LSetModifierNewFinalColor);
  lua_register(L,'SetModifierNewFinalSize',@LSetModifierNewFinalSize);
  lua_register(L,'DestroyParticleSystem',@LDestroyParticleSystem);
  lua_register(L,'SetFog',@LSetFog);
  lua_register(L,'SetAmbientLight',@LSetAmbientLight);
  lua_register(L,'CreateDirectionalLight',@LCreateDirectionalLight);
  lua_register(L,'CreatePointLight',@LCreatePointLight);
  lua_register(L,'CreateSpotLight',@LCreateSpotLight);
  lua_register(L,'LightStep',@LLightStep);
  lua_register(L,'DestroyLightSource',@LDestroyLightSource);
  lua_register(L,'SetFont',@LSetFont);
  lua_register(L,'SetFontColor',@LSetFontColor);
  lua_register(L,'DrawTextU3D',@LDrawTextU3D);
  lua_register(L,'DrawText3D',@LDrawText3D);
  lua_register(L,'DrawTexture',@LDrawTexture);
  lua_register(L,'DrawTextureEx',@LDrawTextureEx);
  lua_register(L,'TakeScreenshot',@LTakeScreenshot);
  lua_register(L,'TakeScreenshotEx',@LTakeScreenshotEx);
  lua_register(L,'CoordToScreen',@LCoordToScreen);
  lua_register(L,'ScreenCoordToVector',@LScreenCoordToVector);
  lua_register(L,'CheckBoundingBoxVisibility',@LCheckBoundingBoxVisibility);
  lua_register(L,'CreateTranslationScalingMatrix',@LCreateTranslationScalingMatrix);
  lua_register(L,'CreateTransformationMatrix',@LCreateTransformationMatrix);
  lua_register(L,'GetBoneTransformationMatrix',@LGetBoneTransformationMatrix);
  lua_register(L,'GetMeshOcurrenceCount',@LGetMeshOcurrenceCount);
  lua_register(L,'GetMeshOccurrenceTransformation',@LGetMeshOccurrenceTransformation);
  lua_register(L,'UpdateSkeleton',@LUpdateSkeleton);
  lua_register(L,'CopyMatrix',@LCopyMatrix);
  lua_register(L,'TransformMatrix',@LTransformMatrix);
  lua_register(L,'InvertMatrix',@LInvertMatrix);
  lua_register(L,'InterpolateMatrices',@LInterpolateMatrices);
  lua_register(L,'GetMatrixEntry',@LGetMatrixEntry);
  lua_register(L,'ReleaseMatrix',@LReleaseMatrix);
  lua_register(L,'GetRayTracingNormal',@LGetRayTracingNormal);
  lua_register(L,'GetIntersectedMaterialIndex',@LGetIntersectedMaterialIndex);
  lua_register(L,'CreateVector',@LCreateVector);
  lua_register(L,'CreateDirectionVector',@LCreateDirectionVector);
  lua_register(L,'CalculateVectorSum',@LCalculateVectorSum);
  lua_register(L,'CalculateVectorDifference',@LCalculateVectorDifference);
  lua_register(L,'CalculateVectorScalarProduct',@LCalculateVectorScalarProduct);
  lua_register(L,'NormalizeVector',@LNormalizeVector);
  lua_register(L,'CalculateVectorLength',@LCalculateVectorLength);
  lua_register(L,'CalculateVectorLongitude',@LCalculateVectorLongitude);
  lua_register(L,'CalculateVectorLatitude',@LCalculateVectorLatitude);
  lua_register(L,'TransformVector',@LTransformVector);
  lua_register(L,'TransformVectorEx',@LTransformVectorEx);
  lua_register(L,'CalculateDotProduct',@LCalculateDotProduct);
  lua_register(L,'CalculateCrossProduct',@LCalculateCrossProduct);
  lua_register(L,'ComputeMatrixTranslation',@LComputeMatrixTranslation);
  lua_register(L,'ComputeMatrixScaling',@LComputeMatrixScaling);
  lua_register(L,'ComputeMatrixRotationAngles',@LComputeMatrixRotationAngles);
  lua_register(L,'GetVector',@LGetVector);
  lua_register(L,'ReleaseVector',@LReleaseVector);

  lua_pushnumber(L,dll);
  Result:=1;
end;
