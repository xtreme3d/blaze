var rini_open: function(S1: PChar; S2: PChar): Double; cdecl;
function Lrini_open(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_open(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var rini_close: function(R1: Double): Double; cdecl;
function Lrini_close(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_close(lua_tonumber(L,1)));
  Result:=1;
end;
var rini_write: function(R1: Double): Double; cdecl;
function Lrini_write(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_write(lua_tonumber(L,1)));
  Result:=1;
end;
var rini_read_real: function(R1: Double; S2: PChar; S3: PChar; S4: PChar): Double; cdecl;
function Lrini_read_real(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_read_real(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var rini_read_string: function(R1: Double; S2: PChar; S3: PChar; S4: PChar): PChar; cdecl;
function Lrini_read_string(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,rini_read_string(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var rini_write_real: function(R1: Double; S2: PChar; S3: PChar; S4: PChar): Double; cdecl;
function Lrini_write_real(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_write_real(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var rini_write_string: function(R1: Double; S2: PChar; S3: PChar; S4: PChar): Double; cdecl;
function Lrini_write_string(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_write_string(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var rini_section_exists: function(R1: Double; S2: PChar): Double; cdecl;
function Lrini_section_exists(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_section_exists(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var rini_key_exists: function(R1: Double; S2: PChar; S3: PChar): Double; cdecl;
function Lrini_key_exists(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_key_exists(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var rini_key_rename: function(R1: Double; S2: PChar; S3: PChar; S4: PChar): Double; cdecl;
function Lrini_key_rename(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_key_rename(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3),lua_tostring(L,4)));
  Result:=1;
end;
var rini_section_rename: function(R1: Double; S2: PChar; S3: PChar): Double; cdecl;
function Lrini_section_rename(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_section_rename(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var rini_section_delete: function(R1: Double; S2: PChar): Double; cdecl;
function Lrini_section_delete(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_section_delete(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var rini_key_delete: function(R1: Double; S2: PChar; S3: PChar): Double; cdecl;
function Lrini_key_delete(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,rini_key_delete(lua_tonumber(L,1),lua_tostring(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var rini_section_find_first: function(R1: Double): PChar; cdecl;
function Lrini_section_find_first(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,rini_section_find_first(lua_tonumber(L,1)));
  Result:=1;
end;
var rini_section_find_next: function(R1: Double): PChar; cdecl;
function Lrini_section_find_next(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,rini_section_find_next(lua_tonumber(L,1)));
  Result:=1;
end;
var rini_key_find_first: function(R1: Double; S2: PChar): PChar; cdecl;
function Lrini_key_find_first(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,rini_key_find_first(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var rini_key_find_next: function(R1: Double; S2: PChar): PChar; cdecl;
function Lrini_key_find_next(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,rini_key_find_next(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;

function LInit_IniLibGMDLL(L: Plua_State): Integer; cdecl;
var dll: THandle;
begin

  dll:=GetModuleHandle(lua_tostring(L,1));
  if dll = 0 then dll:=LoadLibrary(lua_tostring(L,1));

  @rini_open:=getProcAddress(dll,'rini_open');
  @rini_close:=getProcAddress(dll,'rini_close');
  @rini_write:=getProcAddress(dll,'rini_write');
  @rini_read_real:=getProcAddress(dll,'rini_read_real');
  @rini_read_string:=getProcAddress(dll,'rini_read_string');
  @rini_write_real:=getProcAddress(dll,'rini_write_real');
  @rini_write_string:=getProcAddress(dll,'rini_write_string');
  @rini_section_exists:=getProcAddress(dll,'rini_section_exists');
  @rini_key_exists:=getProcAddress(dll,'rini_key_exists');
  @rini_key_rename:=getProcAddress(dll,'rini_key_rename');
  @rini_section_rename:=getProcAddress(dll,'rini_section_rename');
  @rini_section_delete:=getProcAddress(dll,'rini_section_delete');
  @rini_key_delete:=getProcAddress(dll,'rini_key_delete');
  @rini_section_find_first:=getProcAddress(dll,'rini_section_find_first');
  @rini_section_find_next:=getProcAddress(dll,'rini_section_find_next');
  @rini_key_find_first:=getProcAddress(dll,'rini_key_find_first');
  @rini_key_find_next:=getProcAddress(dll,'rini_key_find_next');

  lua_register(L,'iOpen',@Lrini_open);
  lua_register(L,'iClose',@Lrini_close);
  lua_register(L,'iWrite',@Lrini_write);
  lua_register(L,'iReadReal',@Lrini_read_real);
  lua_register(L,'iReadString',@Lrini_read_string);
  lua_register(L,'iWriteReal',@Lrini_write_real);
  lua_register(L,'iWriteString',@Lrini_write_string);
  lua_register(L,'iSectionExists',@Lrini_section_exists);
  lua_register(L,'iKeyExists',@Lrini_key_exists);
  lua_register(L,'iKeyRename',@Lrini_key_rename);
  lua_register(L,'iSectionRename',@Lrini_section_rename);
  lua_register(L,'iSectionDelete',@Lrini_section_delete);
  lua_register(L,'iKeyDelete',@Lrini_key_delete);
  lua_register(L,'iSectionFindFirst',@Lrini_section_find_first);
  lua_register(L,'iSectionFindNext',@Lrini_section_find_next);
  lua_register(L,'iKeyFindFirst',@Lrini_key_find_first);
  lua_register(L,'iKeyFindNext',@Lrini_key_find_next);

  lua_pushnumber(L,dll);
  Result:=1;
end;
