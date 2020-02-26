program Blaze;

{$APPTYPE CONSOLE}
{$R *.RES}

uses
  //SysUtils,
  Windows,
  Messages,
  lua in 'pas\lua.pas',
  lauxlib in 'pas\lauxlib.pas',
  lualib in 'pas\lualib.pas';
  //LuaUtils in 'pas\LuaUtils.pas';

var
  L: Plua_State;
  Error: PChar='';

procedure SetConst(NAME: PChar; VAL: Double); // Регистрация констант
begin
  lua_pushnumber(L,VAL); lua_setglobal(L,NAME);
end;

{$I 'pas/ApiInterface'}
{$I 'pas/xtreme3d'}
{$I 'pas/gmsquall'}
{$I 'pas/IniLibGMDLL'}
{$I 'pas/file_dll'}
{$I 'pas/MaxWinAPI2'}

begin
  L:=lua_open(); // Открытие Lua
  luaopen_base(L);
  luaopen_table(L);
  luaopen_io(L);
  luaopen_string(L);
  luaopen_math(L);
  luaopen_debug(L);
  luaopen_loadlib(L);

  InitApiInterface(); // Подключение библиотек
  lua_register(L,'Init_xtreme3d',@LInit_xtreme3d);
  lua_register(L,'Init_gmsquall',@LInit_gmsquall);
  lua_register(L,'Init_IniLibGMDLL',@LInit_IniLibGMDLL);
  lua_register(L,'Init_file_dll',@LInit_file_dll);
  lua_register(L,'Init_MaxWinAPI2',@LInit_MaxWinAPI2);

  try
  try
    if ParamStr(1) <> '' then luaL_loadfile(L,PChar(ParamStr(1))) else luaL_loadfile(L,'main.lua'); // Запуск скрипта
    Error:=lua_tostring(L,-1); // Ошибки при компиляции
    if Error = '' then if lua_pcall(L,0,LUA_MULTRET,0) <> 0 then Error:=lua_tostring(L,-1); // Ошибки при выполнении
  except
    Error:='Unknown error while executing the code';
  end;
  finally
    if Error <> '' then ShowError();
    lua_close(L); // Закрытие Lua
  end;
end.
