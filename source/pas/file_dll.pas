var f_text_open: function(S1: PChar; R2: Double): Double; cdecl;
function Lf_text_open(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_open(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_text_readline: function(R1: Double): Double; cdecl;
function Lf_text_readline(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_readline(lua_tonumber(L,1)));
  Result:=1;
end;
var f_text_read_dataleft: function(R1: Double): Double; cdecl;
function Lf_text_read_dataleft(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_read_dataleft(lua_tonumber(L,1)));
  Result:=1;
end;
var f_text_read_real: function(R1: Double): Double; cdecl;
function Lf_text_read_real(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_read_real(lua_tonumber(L,1)));
  Result:=1;
end;
var f_text_read_word: function(R1: Double): PChar; cdecl;
function Lf_text_read_word(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,f_text_read_word(lua_tonumber(L,1)));
  Result:=1;
end;
var f_text_read_string: function(R1: Double): PChar; cdecl;
function Lf_text_read_string(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,f_text_read_string(lua_tonumber(L,1)));
  Result:=1;
end;
var f_text_writeline: function(R1: Double; R2: Double): Double; cdecl;
function Lf_text_writeline(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_writeline(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_text_write_real: function(R1: Double; R2: Double): Double; cdecl;
function Lf_text_write_real(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_write_real(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_text_write_word: function(R1: Double; S2: PChar): Double; cdecl;
function Lf_text_write_word(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_write_word(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var f_text_write_string: function(R1: Double; S2: PChar): Double; cdecl;
function Lf_text_write_string(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_write_string(lua_tonumber(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var f_text_eof: function(R1: Double): Double; cdecl;
function Lf_text_eof(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_eof(lua_tonumber(L,1)));
  Result:=1;
end;
var f_text_memoryerror: function(R1: Double): Double; cdecl;
function Lf_text_memoryerror(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_memoryerror(lua_tonumber(L,1)));
  Result:=1;
end;
var f_text_close: function(R1: Double): Double; cdecl;
function Lf_text_close(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_text_close(lua_tonumber(L,1)));
  Result:=1;
end;
var f_bin_open: function(S1: PChar; R2: Double): Double; cdecl;
function Lf_bin_open(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_open(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_bin_read_byte: function(R1: Double): Double; cdecl;
function Lf_bin_read_byte(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_read_byte(lua_tonumber(L,1)));
  Result:=1;
end;
var f_bin_read_byte2: function(R1: Double): Double; cdecl;
function Lf_bin_read_byte2(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_read_byte2(lua_tonumber(L,1)));
  Result:=1;
end;
var f_bin_read_byte3: function(R1: Double): Double; cdecl;
function Lf_bin_read_byte3(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_read_byte3(lua_tonumber(L,1)));
  Result:=1;
end;
var f_bin_write_byte: function(R1: Double; R2: Double): Double; cdecl;
function Lf_bin_write_byte(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_write_byte(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_bin_write_byte2: function(R1: Double; R2: Double): Double; cdecl;
function Lf_bin_write_byte2(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_write_byte2(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_bin_write_byte3: function(R1: Double; R2: Double): Double; cdecl;
function Lf_bin_write_byte3(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_write_byte3(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_bin_read_chars: function(R1: Double; R2: Double): PChar; cdecl;
function Lf_bin_read_chars(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,f_bin_read_chars(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_bin_write_chars: function(R1: Double; R2: Double; S3: PChar): Double; cdecl;
function Lf_bin_write_chars(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_write_chars(lua_tonumber(L,1),lua_tonumber(L,2),lua_tostring(L,3)));
  Result:=1;
end;
var f_bin_eof: function(R1: Double): Double; cdecl;
function Lf_bin_eof(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_eof(lua_tonumber(L,1)));
  Result:=1;
end;
var f_bin_seek: function(R1: Double; R2: Double): Double; cdecl;
function Lf_bin_seek(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_seek(lua_tonumber(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_bin_memoryerror: function(R1: Double): Double; cdecl;
function Lf_bin_memoryerror(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_memoryerror(lua_tonumber(L,1)));
  Result:=1;
end;
var f_bin_close: function(R1: Double): Double; cdecl;
function Lf_bin_close(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_bin_close(lua_tonumber(L,1)));
  Result:=1;
end;
var f_gettext: function(): PChar; cdecl;
function Lf_gettext(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,f_gettext());
  Result:=1;
end;
var f_settext: function(S1: PChar): Double; cdecl;
function Lf_settext(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_settext(lua_tostring(L,1)));
  Result:=1;
end;
var f_cleartext: function(): Double; cdecl;
function Lf_cleartext(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_cleartext());
  Result:=1;
end;
var f_readfromfile: function(S1: PChar): Double; cdecl;
function Lf_readfromfile(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_readfromfile(lua_tostring(L,1)));
  Result:=1;
end;
var f_writetofile: function(S1: PChar; R2: Double): Double; cdecl;
function Lf_writetofile(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_writetofile(lua_tostring(L,1),lua_tonumber(L,2)));
  Result:=1;
end;
var f_deletefile: function(S1: PChar): Double; cdecl;
function Lf_deletefile(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_deletefile(lua_tostring(L,1)));
  Result:=1;
end;
var f_renamefile: function(S1: PChar; S2: PChar): Double; cdecl;
function Lf_renamefile(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_renamefile(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;
var f_copyfile: function(S1: PChar; S2: PChar): Double; cdecl;
function Lf_copyfile(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,f_copyfile(lua_tostring(L,1),lua_tostring(L,2)));
  Result:=1;
end;

function LInit_file_dll(L: Plua_State): Integer; cdecl;
var dll: THandle;
begin

  dll:=GetModuleHandle(lua_tostring(L,1));
  if dll = 0 then dll:=LoadLibrary(lua_tostring(L,1));

  @f_text_open:=getProcAddress(dll,'f_text_open');
  @f_text_readline:=getProcAddress(dll,'f_text_readline');
  @f_text_read_dataleft:=getProcAddress(dll,'f_text_read_dataleft');
  @f_text_read_real:=getProcAddress(dll,'f_text_read_real');
  @f_text_read_word:=getProcAddress(dll,'f_text_read_word');
  @f_text_read_string:=getProcAddress(dll,'f_text_read_string');
  @f_text_writeline:=getProcAddress(dll,'f_text_writeline');
  @f_text_write_real:=getProcAddress(dll,'f_text_write_real');
  @f_text_write_word:=getProcAddress(dll,'f_text_write_word');
  @f_text_write_string:=getProcAddress(dll,'f_text_write_string');
  @f_text_eof:=getProcAddress(dll,'f_text_eof');
  @f_text_memoryerror:=getProcAddress(dll,'f_text_memoryerror');
  @f_text_close:=getProcAddress(dll,'f_text_close');
  @f_bin_open:=getProcAddress(dll,'f_bin_open');
  @f_bin_read_byte:=getProcAddress(dll,'f_bin_read_byte');
  @f_bin_read_byte2:=getProcAddress(dll,'f_bin_read_byte2');
  @f_bin_read_byte3:=getProcAddress(dll,'f_bin_read_byte3');
  @f_bin_write_byte:=getProcAddress(dll,'f_bin_write_byte');
  @f_bin_write_byte2:=getProcAddress(dll,'f_bin_write_byte2');
  @f_bin_write_byte3:=getProcAddress(dll,'f_bin_write_byte3');
  @f_bin_read_chars:=getProcAddress(dll,'f_bin_read_chars');
  @f_bin_write_chars:=getProcAddress(dll,'f_bin_write_chars');
  @f_bin_eof:=getProcAddress(dll,'f_bin_eof');
  @f_bin_seek:=getProcAddress(dll,'f_bin_seek');
  @f_bin_memoryerror:=getProcAddress(dll,'f_bin_memoryerror');
  @f_bin_close:=getProcAddress(dll,'f_bin_close');
  @f_gettext:=getProcAddress(dll,'f_gettext');
  @f_settext:=getProcAddress(dll,'f_settext');
  @f_cleartext:=getProcAddress(dll,'f_cleartext');
  @f_readfromfile:=getProcAddress(dll,'f_readfromfile');
  @f_writetofile:=getProcAddress(dll,'f_writetofile');
  @f_deletefile:=getProcAddress(dll,'f_deletefile');
  @f_renamefile:=getProcAddress(dll,'f_renamefile');
  @f_copyfile:=getProcAddress(dll,'f_copyfile');

  lua_register(L,'fTextOpen',@Lf_text_open);
  lua_register(L,'fTextReadLine',@Lf_text_readline);
  lua_register(L,'fTextReadDataLeft',@Lf_text_read_dataleft);
  lua_register(L,'fTextReadReal',@Lf_text_read_real);
  lua_register(L,'fTextReadWord',@Lf_text_read_word);
  lua_register(L,'fTextReadString',@Lf_text_read_string);
  lua_register(L,'fTextWriteLine',@Lf_text_writeline);
  lua_register(L,'fTextWriteReal',@Lf_text_write_real);
  lua_register(L,'fTextWriteWord',@Lf_text_write_word);
  lua_register(L,'fTextWriteString',@Lf_text_write_string);
  lua_register(L,'fTextEof',@Lf_text_eof);
  lua_register(L,'fTextMemoryError',@Lf_text_memoryerror);
  lua_register(L,'fTextClose',@Lf_text_close);
  lua_register(L,'fBinOpen',@Lf_bin_open);
  lua_register(L,'fBinReadByte',@Lf_bin_read_byte);
  lua_register(L,'fBinReadByte2',@Lf_bin_read_byte2);
  lua_register(L,'fBinReadByte3',@Lf_bin_read_byte3);
  lua_register(L,'fBinWriteByte',@Lf_bin_write_byte);
  lua_register(L,'fBinWriteByte2',@Lf_bin_write_byte2);
  lua_register(L,'fBinWriteByte3',@Lf_bin_write_byte3);
  lua_register(L,'fBinReadChars',@Lf_bin_read_chars);
  lua_register(L,'fBinWriteChars',@Lf_bin_write_chars);
  lua_register(L,'fBinEof',@Lf_bin_eof);
  lua_register(L,'fBinSeek',@Lf_bin_seek);
  lua_register(L,'fBinMemoryError',@Lf_bin_memoryerror);
  lua_register(L,'fBinClose',@Lf_bin_close);
  lua_register(L,'fGetText',@Lf_gettext);
  lua_register(L,'fSetText',@Lf_settext);
  lua_register(L,'fClearText',@Lf_cleartext);
  lua_register(L,'fReadFromFile',@Lf_readfromfile);
  lua_register(L,'fWriteToFile',@Lf_writetofile);
  lua_register(L,'fDeleteFile',@Lf_deletefile);
  lua_register(L,'fRenameFile',@Lf_renamefile);
  lua_register(L,'fCopyFile',@Lf_copyfile);

  lua_pushnumber(L,dll);
  Result:=1;
end;
