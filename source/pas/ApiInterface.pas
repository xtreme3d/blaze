// ОКНО СООБЩЕНИЯ ОБ ОШИБКЕ ////////////////////////////////////////////////////
function PlainWinProc(hWnd: THandle; nMsg: UINT; wParam, lParam: Cardinal): Cardinal; export; stdcall;
var
  Rect: TRect;
  hedit: THandle;
const
  id_Button = 100;
  //id_Button2 = 101;
begin
  Result:=0;
  case nMsg of
    wm_Create: // —оздание кнопки
    begin
      CreateWindowEx(0,'BUTTON','&Abort',
                     ws_Child or ws_Visible or ws_Border or bs_PushButton,
                     385,255,80,30,
                     hwnd,id_Button,hInstance,nil);
      //CreateWindowEx(0,'BUTTON','&Copy',
      //               ws_Child or ws_Visible or ws_Border or bs_PushButton,
      //               385,255,80,30,
      //               hwnd,id_Button2,hInstance,nil);
      hedit:=CreateWindowEx(WS_EX_CLIENTEDGE,'Edit',Error,WS_VISIBLE or WS_CHILD or WS_VSCROLL or ES_MULTILINE or ES_AUTOVSCROLL,
                            10,10,455,235,hwnd,1,hInstance,nil);
    end;
    wm_Size:
    begin
      {// get the size of the client window
      GetClientRect(hWnd,Rect);
      // move the button window
      SetWindowPos (
        GetDlgItem (hWnd, id_Button), // button handle
        0, // zOrder
        Rect.Right div 2 - 100,
        Rect.Bottom div 2 - 40,
        0, 0, // new size
        swp_NoZOrder or swp_NoSize);}
    end;
    wm_Command: // ќпределить нажатие кнопки
    begin
      if LoWord(wParam) = id_Button then if HiWord(wParam) = bn_Clicked then DestroyWindow(hwnd);

      //if LoWord(wParam) = id_Button2 then
      //  if HiWord(wParam) = bn_Clicked then
      //  begin
      //  end;
    end;
    wm_Destroy: // Освобождение памяти
      PostQuitMessage(0);
    else
      Result:=DefWindowProc(hWnd,nMsg,wParam,lParam);
  end;
end;

procedure ShowError();
var
  hWnd: THandle;
  Msg2: TMsg;
  WndClassEx: TWndClassEx;
begin
// »нициализаци¤ структуры окна
  WndClassEx.cbSize:=sizeOf(TWndClassEx);
  WndClassEx.lpszClassName:='PlainWindow';
  WndClassEx.style:=cs_VRedraw or cs_HRedraw;
  WndClassEx.hInstance:=HInstance;
  WndClassEx.lpfnWndProc:=@PlainWinProc;
  WndClassEx.cbClsExtra:=0;
  WndClassEx.cbWndExtra:=0;
  WndClassEx.hIcon:=LoadIcon(0,IDI_WARNING);
  WndClassEx.hIconSm:=LoadIcon(0,IDI_WARNING);
  WndClassEx.hCursor:=LoadCursor(0, idc_Arrow);
  WndClassEx.hbrBackground:=COLOR_WINDOW;
  WndClassEx.lpszMenuName:=nil;
  RegisterClassEx(WndClassEx);

  hWnd:=CreateWindowEx(WS_EX_APPWINDOW,WndClassEx.lpszClassName,
                       'Error Messages',WS_OVERLAPPED or WS_SYSMENU,
                       (GetSystemMetrics(SM_CXSCREEN)-480) div 2,(GetSystemMetrics(SM_CYSCREEN)-320) div 2,480,320,
                       0,0,HInstance,nil);
  ShowWindow(hWnd,SW_SHOW);
  while GetMessage(Msg2,0,0,0) do
  begin
    TranslateMessage(Msg2);
    DispatchMessage(Msg2);
  end;
end;

// ОКНА ПРОГРАММЫ //////////////////////////////////////////////////////////////
var
  Wce: TWndClassEx; // Создать класс окна

function WindowProc(wnd: HWND; msg: Integer; Wparam: Wparam; Lparam: Lparam): Lresult; stdcall; // Функция для создания окна
begin
  case msg of wm_destroy:
  begin
    postquitmessage(0); exit;
    Result:=0;
  end;
  else Result:=DefWindowProc(wnd,msg,wparam,lparam);
  end;
end;

// WindowsCreate(CAPTION: PChar; STYLE1, STYLE2, STYLE3: Integer; X,Y,W,H: Integer; PARENT: Integer): Integer; // Создать окно
function LWindowsCreate(L: Plua_State): Integer; cdecl;
var win: HWND;
begin
  Wce.cbSize:=sizeof(Wce);
  //Wce.style:=cs_hredraw or cs_vredraw;
  Wce.lpfnWndProc:=@WindowProc;
  //Wce.cbClsExtra:=0;
  //Wce.cbWndExtra:=0;
  Wce.hInstance:=HInstance;
  Wce.hIcon:=LoadIcon(0,idi_application);
  Wce.hCursor:=LoadCursor(0,idc_arrow);
  Wce.hbrBackground:=COLOR_WINDOW;
  //Wce.lpszMenuName:=nil;
  Wce.lpszClassName:='Win';
  RegisterClassEx(Wce);

  win:=CreateWindow('Win',lua_tostring(L,1),
                    Trunc(lua_tonumber(L,2)) or Trunc(lua_tonumber(L,3)) or Trunc(lua_tonumber(L,4)),
                    Trunc(lua_tonumber(L,5)),Trunc(lua_tonumber(L,6)),
                    Trunc(lua_tonumber(L,7)),Trunc(lua_tonumber(L,8)),
                    Trunc(lua_tonumber(L,9)),0,Hinstance,nil);
  ShowWindow(win,SW_SHOW);
  lua_pushnumber(L,win);
  Result:=1;
end;

// WindowsDestroy(HANDLE: Double): Boolean; // Удалить окно
function LWindowsDestroy(L: Plua_State): Integer; cdecl;
begin
  lua_pushboolean(L,Integer(DestroyWindow(Trunc(lua_tonumber(L,1)))));
  Result:=1;
end;

// WindowsExists(HANDLE: Double): Boolean; // Существует ли окно
function LWindowsExists(L: Plua_State): Integer; cdecl;
begin
  lua_pushboolean(L,Integer(IsWindow(Trunc(lua_tonumber(L,1)))));
  Result:=1;
end;

// WindowCenter(HANDLE: Double): Boolean; // Центрировать окно на экране
function LWindowCenter(L: Plua_State): Integer; cdecl;
var
  x,y,w,h: Integer;
  rt: TRect;
begin
  GetClientRect(Trunc(lua_tonumber(L,1)),rt);
  w:=rt.right-rt.left;
  h:=rt.bottom-rt.top;
  x:=(GetSystemMetrics(SM_CXSCREEN)-w) div 2;
  y:=(GetSystemMetrics(SM_CYSCREEN)-h) div 2;

  lua_pushboolean(L,Integer(MoveWindow(Trunc(lua_tonumber(L,1)),x,y,w,h,true)));
  Result:=1;
end;

// WindowSetRectangle(HANDLE, X,Y,W,H: Double): Boolean; // Новые значения для окна
function LWindowSetRectangle(L: Plua_State): Integer; cdecl;
begin
  lua_pushboolean(L,Integer(MoveWindow(Trunc(lua_tonumber(L,1)),
                                       Trunc(lua_tonumber(L,2)),Trunc(lua_tonumber(L,3)),
                                       Trunc(lua_tonumber(L,4)),Trunc(lua_tonumber(L,5)),true)));
  Result:=1;
end;

// WindowGetRectangle(HANDLE, ATR: Integer): Integer; // Получить размер и положение окна
function LWindowGetRectangle(L: Plua_State): Integer; cdecl;
var rt: TRect;
begin
  GetClientRect(Trunc(lua_tonumber(L,1)),rt);
       if lua_tonumber(L,2) = 0 then lua_pushnumber(L,rt.left)
  else if lua_tonumber(L,2) = 1 then lua_pushnumber(L,rt.top)
  else if lua_tonumber(L,2) = 2 then lua_pushnumber(L,rt.right)
  else if lua_tonumber(L,2) = 3 then lua_pushnumber(L,rt.bottom)
  else if lua_tonumber(L,2) = 4 then lua_pushnumber(L,rt.right-rt.left)
  else if lua_tonumber(L,2) = 5 then lua_pushnumber(L,rt.bottom-rt.top);
  Result:=1;
end;

// WindowSetVisible(HANDLE, FLAG: Integer): Boolean; // Показать или скрыть окно
function LWindowSetVisible(L: Plua_State): Integer; cdecl;
begin
  if lua_tonumber(L,2) > 0 then lua_pushboolean(L,Integer(ShowWindow(Trunc(lua_tonumber(L,1)),SW_SHOW)))
  else lua_pushboolean(L,Integer(ShowWindow(Trunc(lua_tonumber(L,1)),SW_HIDE)));
  Result:=1;
end;

// WindowGetVisible(HANDLE: Double): Boolean; // Видимо или скрыто окно
function LWindowGetVisible(L: Plua_State): Integer; cdecl;
begin
  lua_pushboolean(L,Integer(IsWindowVisible(Trunc(lua_tonumber(L,1)))));
  Result:=1;
end;

// WindowSetCaption(HANDLE: Integer, CAPTION: PChar): Boolean; // Изменить заголовок окна
function LWindowSetCaption(L: Plua_State): Integer; cdecl;
begin
  lua_pushboolean(L,Integer(SetWindowText(Trunc(lua_tonumber(L,1)),lua_tostring(L,2))));
  Result:=1;
end;

// WindowGetCaption(HANDLE: Double): PChar; // Показать заголовок окна
function LWindowGetCaption(L: Plua_State): Integer; cdecl;
var buff: array[0..255] of char;
begin
  GetWindowText(Trunc(lua_tonumber(L,1)),buff,SizeOf(buff));
  lua_pushstring(L,buff);
  Result:=1;
end;

// WindowSetIcon(HANDLE: Double, ICONFILE: PChar): Boolean; // Изменить иконку окна
function LWindowSetIcon(L: Plua_State): Integer; cdecl;
var Icon: HIcon;
begin
  Icon:=LoadImage(0,PChar(lua_tostring(L,2)),IMAGE_ICON,
                  GetSystemMetrics(SM_CXSMICON),GetSystemMetrics(SM_CYSMICON),
                  LR_LOADFROMFILE);
  try
    lua_pushboolean(L,SendMessage(Trunc(lua_tonumber(L,1)),WM_SETICON,1,Icon));
  finally
    DestroyIcon(Icon);
  end;
  Result:=1;
end;

// WindowsRefresh(); // Обновить состояние окна
function LWindowsRefresh(L: Plua_State): Integer; cdecl;
var
  Msg: TMsg;
  lResult: Boolean;
begin
  lResult := true;
  while lResult do
  begin
    lResult := False;
    if PeekMessage(Msg, 0, 0, 0, PM_REMOVE) then
    begin
      lResult := True;
      if Msg.Message <> WM_QUIT then
      begin
        TranslateMessage(Msg);
        DispatchMessage(Msg);
      end;
    end;
  end;
  Result:=0;
end;

// WindowsStyleAdd(ST1,ST2,ST3,ST4,ST5,ST6,ST7,ST8: Double): Integer; // Логическое сложение (для сложения стилей)
function LWindowsStyleAdd(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,Trunc(lua_tonumber(L,1)) or Trunc(lua_tonumber(L,2)) or
                   Trunc(lua_tonumber(L,3)) or Trunc(lua_tonumber(L,4)) or
                   Trunc(lua_tonumber(L,5)) or Trunc(lua_tonumber(L,6)) or
                   Trunc(lua_tonumber(L,7)) or Trunc(lua_tonumber(L,8)));
  Result:=1;
end;

// РАБОТА С РАЗРЕШЕНИЕМ МОНИТОРА ///////////////////////////////////////////////
// DisplayGetParemeter(PAREMETER: Double): Double; // Получить параметры монитора
function LDisplayGetParemeter(L: Plua_State): Integer; cdecl;
var
  Paremeter: Double;
  DesktopDC: HDC;
begin
  Paremeter:=lua_tonumber(L,1);
  if Paremeter = 0 then lua_pushnumber(L,GetSystemMetrics(SM_CXSCREEN))
  else if Paremeter = 1 then lua_pushnumber(L,GetSystemMetrics(SM_CYSCREEN))
  else
  begin
    DesktopDC:=GetDC(0);
    lua_pushnumber(L,GetDeviceCaps(DesktopDC,BITSPIXEL));
    ReleaseDC(0,DesktopDC);
  end;
  Result:=1;
end;

// DisplayMouseSet(X,Y: Double): Double; // Изменить позицию мыши
function LDisplayMouseSet(L: Plua_State): Integer; cdecl;
begin
  lua_pushboolean(L,Integer(SetCursorPos(Trunc(lua_tonumber(L,1)),Trunc(lua_tonumber(L,2)))));
  Result:=1;
end;

// DisplayMouseGet(XY: Double): Double; // Получить координаты мышки
function LDisplayMouseGet(L: Plua_State): Integer; cdecl;
var foo: TPoint;
begin
  GetCursorPos(foo);
  if lua_tonumber(L,1) = 0 then lua_pushnumber(L,foo.X) else lua_pushnumber(L,foo.Y);
  Result:=1;
end;

// ПРОЧИЕ ОБЩИЕ КОМАНДЫ ////////////////////////////////////////////////////////
// ShowMessage(MESS, CAPT: PChar; STYLE1, STYLE2, STYLE3, PARENT: Integer): Integer; // Создать сообщение
function LShowMessage(L: Plua_State): Integer; cdecl;
var capt: PChar;
begin
  capt:=lua_tostring(L,2);
  if capt = '' then capt:='';
  lua_pushnumber(L,Messagebox(Trunc(lua_tonumber(L,6)),lua_tostring(L,1),capt,
                              Trunc(lua_tonumber(L,3)) or Trunc(lua_tonumber(L,4)) or Trunc(lua_tonumber(L,5))));
  Result:=1;
end;

// Sleep(TIME: Integer); // Задержка в программе
function LSleep(L: Plua_State): Integer; cdecl;
begin
  Sleep(Trunc(lua_tonumber(L,1)));
  Result:=0;
end;

// ParameterCount(): Double; // Общее количество параметров перед. в программу
function LParameterCount(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,ParamCount());
  Result:=1;
end;

// ParameterString(N: Double): PChar; // Получить значение параметра
function LParameterString(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,PChar(ParamStr(Trunc(lua_tonumber(L,1)))));
  Result:=1;
end;

// CallFps(FPS: Double): Double; // Получить количество fps
var
  T1: Cardinal = 0;
  T2: Cardinal = 0;
  Fps1: Cardinal = 0;
  Fps2: Cardinal = 0;
  Time: Cardinal = 10;
function LCallFps(L: Plua_State): Integer; cdecl;
begin
  T1:=GetTickCount;
  if T1-T2 >= 1000 then
  begin
    if Fps1 > lua_tonumber(L,1) then Time:=Time+1 else if Time > 0 then Time:=Time-1;
    Fps2:=Fps1;
    Fps1:=0;
    T2:=GetTickCount;
  end;
  Fps1:=fps1+1;
  Sleep(Time);
  lua_pushnumber(L,Fps2);
  Result:=1;
end;

// КЛАВИАТУРА, МЫШЬ ////////////////////////////////////////////////////////////
var
  State: TkeyboardState; // Нажатая кнопка
  Pressed, Released: array [0..255] of Boolean; // Нажатие всех кнопок

// WindowsGetMouse(XY: Integer): Integer; // Получить координаты мышки
function LWindowsGetMouse(L: Plua_State): Integer; cdecl;
var
  foo: TPoint;
begin
  GetCursorPos(foo);
  if lua_tonumber(L,1) = 0 then lua_pushnumber(L,foo.X) else lua_pushnumber(L,foo.Y);
  Result:=1;
end;

// KeyRefresh(): Integer; // Обновить состояние клавиатуры
function LKeyRefresh(L: Plua_State): Integer; cdecl;
begin
  GetKeyboardState(State);
  Result:=0;
end;

// Key(K: Double): Boolean; // Проверка нажатой клавиши
function LKey(L: Plua_State): Integer; cdecl;
begin
  lua_pushboolean(L,Integer(((State[Trunc(lua_tonumber(L,1))] and 128) <> 0)));
  Result:=1;
end;

// KeyPressed(K: Double): Boolean; // Проверка нажатой клавиши
function LKeyPressed(L: Plua_State): Integer; cdecl;
var
  res, k: byte;
begin
  res:=0;
  k:=Trunc(lua_tonumber(L,1));
  if ((State[k] and 128) <> 0) then
  begin
    if not Pressed[k] then
    begin
      Pressed[k]:=True;
      res:=1;
    end;
  end
  else Pressed[k]:=False;

  lua_pushboolean(L,res);
  Result:=1;
end;

// KeyReleased(K: Double): Boolean; // Проверка нажатой клавиши
function LKeyReleased(L: Plua_State): Integer; cdecl;
var
  res, k: byte;
begin
  res:=0;
  k:=Trunc(lua_tonumber(L,1));
  if ((State[k] and 128) <> 0) then Released[k]:=True else
  begin
    if Released[k] then res:=1;
    Released[k]:=False;
  end;

  lua_pushboolean(L,res);
  Result:=1;
end;

// ФУНКЦИИ РАБОТЫ С ЦВЕТОМ /////////////////////////////////////////////////////

// RGB(R, G, B: Double): Double; // Смешивание цветов
function LRGB(L: Plua_State): Integer; cdecl;
begin
  lua_pushnumber(L,RGB(Trunc(lua_tonumber(L,1)),Trunc(lua_tonumber(L,2)),Trunc(lua_tonumber(L,3))));
  Result:=1;
end;

// ФУНКЦИИ РАБОТЫ СО СТРОКАМИ //////////////////////////////////////////////////

// Chr(R: Double): PChar; // Смешивание цветов
function LChr(L: Plua_State): Integer; cdecl;
begin
  lua_pushstring(L,PChar(Chr(Integer(Trunc(lua_tonumber(L,1))))));
  Result:=1;
end;

// РАБОТА С ФАЙЛОВОЙ СИСТЕМОЙ //////////////////////////////////////////////////

// FileExists(FILE: PChar): Boolean; // Существует ли файл
function LFileExists(L: Plua_State): Integer; cdecl;
var atr: DWORD;
begin
  atr:=GetFileAttributes(lua_tostring(L,1));
  if (atr = FILE_ATTRIBUTE_DIRECTORY) or
     (atr = FILE_ATTRIBUTE_DEVICE) or
     (atr = DWORD($FFFFFFFF)) then lua_pushboolean(L,0) else lua_pushboolean(L,1);
  Result:=1;
end;

// ВЫПОЛНЕНИЕ ПРОГРАММЫ ////////////////////////////////////////////////////////

// ExternalFree(DLL: PChar): Boolean // Выгрузка DLL из программы
function LExternalFree(L: Plua_State): Integer; cdecl;
var dll: THandle;
begin
  dll:=GetModuleHandle(lua_tostring(L,1));
  if dll <> 0 then lua_pushboolean(L,Integer(FreeLibrary(dll)));
  Result:=1;
end;

// ExecuteFile(DLL: PChar); // Выполнить код из файла
function LExecuteFile(L: Plua_State): Integer; cdecl;
begin
  try
  try
    luaL_loadfile(L,lua_tostring(L,1)); // Запуск скрипта
    Error:=lua_tostring(L,-1); // Ошибки при компиляции
    if Error = '' then if lua_pcall(L,0,LUA_MULTRET,0) <> 0 then Error:=lua_tostring(L,-1); // Ошибки при выполнении
  except
    Error:='Unknown error while executing the code';
  end;
  finally
    if Error <> '' then
    begin
      ShowError();
      lua_close(L); // Закрытие Lua
      RunError;
    end;
  end;
  Result:=0;
end;

procedure InitApiInterface(); // Инициализация библиотеки
begin
  // РЕГИСТРАЦИЯ КОНСТАНТ //////////////////////////////////////////////////////
  lua_pushnumber(L,WS_OVERLAPPED); lua_setglobal(L,'WS_OVERLAPPED');
  lua_pushnumber(L,WS_POPUP); lua_setglobal(L,'WS_POPUP');
  lua_pushnumber(L,WS_CHILD); lua_setglobal(L,'WS_CHILD');
  lua_pushnumber(L,WS_MINIMIZE); lua_setglobal(L,'WS_MINIMIZE');
  lua_pushnumber(L,WS_VISIBLE); lua_setglobal(L,'WS_VISIBLE');
  lua_pushnumber(L,WS_DISABLED); lua_setglobal(L,'WS_DISABLED');
  lua_pushnumber(L,WS_CLIPSIBLINGS); lua_setglobal(L,'WS_CLIPSIBLINGS');
  lua_pushnumber(L,WS_CLIPCHILDREN); lua_setglobal(L,'WS_CLIPCHILDREN');
  lua_pushnumber(L,WS_MAXIMIZE); lua_setglobal(L,'WS_MAXIMIZE');
  lua_pushnumber(L,WS_CAPTION); lua_setglobal(L,'WS_CAPTION');
  lua_pushnumber(L,WS_BORDER); lua_setglobal(L,'WS_BORDER');
  lua_pushnumber(L,WS_DLGFRAME); lua_setglobal(L,'WS_DLGFRAME');
  lua_pushnumber(L,WS_VSCROLL); lua_setglobal(L,'WS_VSCROLL');
  lua_pushnumber(L,WS_HSCROLL); lua_setglobal(L,'WS_HSCROLL');
  lua_pushnumber(L,WS_SYSMENU); lua_setglobal(L,'WS_SYSMENU');
  lua_pushnumber(L,WS_THICKFRAME); lua_setglobal(L,'WS_THICKFRAME');
  lua_pushnumber(L,WS_GROUP); lua_setglobal(L,'WS_GROUP');

  lua_pushnumber(L,WS_OVERLAPPEDWINDOW); lua_setglobal(L,'WS_OVERLAPPEDWINDOW');
  lua_pushnumber(L,WS_TILEDWINDOW); lua_setglobal(L,'WS_TILEDWINDOW');
  lua_pushnumber(L,WS_POPUPWINDOW); lua_setglobal(L,'WS_POPUPWINDOW');
  lua_pushnumber(L,WS_CHILDWINDOW); lua_setglobal(L,'WS_CHILDWINDOW');

  lua_pushnumber(L,SW_HIDE); lua_setglobal(L,'SW_HIDE');
  lua_pushnumber(L,SW_SHOW); lua_setglobal(L,'SW_SHOW');

  lua_pushnumber(L,MB_OK); lua_setglobal(L,'MB_OK');
  lua_pushnumber(L,MB_OKCANCEL); lua_setglobal(L,'MB_OKCANCEL');
  lua_pushnumber(L,MB_ABORTRETRYIGNORE); lua_setglobal(L,'MB_ABORTRETRYIGNORE');
  lua_pushnumber(L,MB_YESNOCANCEL); lua_setglobal(L,'MB_YESNOCANCEL');
  lua_pushnumber(L,MB_YESNO); lua_setglobal(L,'MB_YESNO');
  lua_pushnumber(L,MB_RETRYCANCEL); lua_setglobal(L,'MB_RETRYCANCEL');

  lua_pushnumber(L,MB_ICONHAND); lua_setglobal(L,'MB_ICONHAND');
  lua_pushnumber(L,MB_ICONQUESTION); lua_setglobal(L,'MB_ICONQUESTION');
  lua_pushnumber(L,MB_ICONEXCLAMATION); lua_setglobal(L,'MB_ICONEXCLAMATION');
  lua_pushnumber(L,MB_ICONASTERISK); lua_setglobal(L,'MB_ICONASTERISK');
  lua_pushnumber(L,MB_USERICON); lua_setglobal(L,'MB_USERICON');
  lua_pushnumber(L,MB_ICONWARNING); lua_setglobal(L,'MB_ICONWARNING');
  lua_pushnumber(L,MB_ICONERROR); lua_setglobal(L,'MB_ICONERROR');
  lua_pushnumber(L,MB_ICONINFORMATION); lua_setglobal(L,'MB_ICONINFORMATION');
  lua_pushnumber(L,MB_ICONSTOP); lua_setglobal(L,'MB_ICONSTOP');

  lua_pushnumber(L,MB_DEFBUTTON1); lua_setglobal(L,'MB_DEFBUTTON1');
  lua_pushnumber(L,MB_DEFBUTTON2); lua_setglobal(L,'MB_DEFBUTTON2');
  lua_pushnumber(L,MB_DEFBUTTON3); lua_setglobal(L,'MB_DEFBUTTON3');
  lua_pushnumber(L,MB_DEFBUTTON4); lua_setglobal(L,'MB_DEFBUTTON4');

  lua_pushnumber(L,MB_APPLMODAL); lua_setglobal(L,'MB_APPLMODAL');
  lua_pushnumber(L,MB_SYSTEMMODAL); lua_setglobal(L,'MB_SYSTEMMODAL');
  lua_pushnumber(L,MB_TASKMODAL); lua_setglobal(L,'MB_TASKMODAL');
  lua_pushnumber(L,MB_HELP); lua_setglobal(L,'MB_HELP');

  lua_pushnumber(L,VK_LBUTTON); lua_setglobal(L,'VK_LBUTTON');
  lua_pushnumber(L,VK_RBUTTON); lua_setglobal(L,'VK_RBUTTON');
  lua_pushnumber(L,VK_CANCEL); lua_setglobal(L,'VK_CANCEL');
  lua_pushnumber(L,VK_MBUTTON); lua_setglobal(L,'VK_MBUTTON');
  lua_pushnumber(L,VK_XBUTTON1); lua_setglobal(L,'VK_XBUTTON1');
  lua_pushnumber(L,VK_XBUTTON2); lua_setglobal(L,'VK_XBUTTON2');
  lua_pushnumber(L,VK_BACK); lua_setglobal(L,'VK_BACK');
  lua_pushnumber(L,VK_TAB); lua_setglobal(L,'VK_TAB');
  lua_pushnumber(L,VK_CLEAR); lua_setglobal(L,'VK_CLEAR');
  lua_pushnumber(L,VK_RETURN); lua_setglobal(L,'VK_RETURN');
  lua_pushnumber(L,VK_SHIFT); lua_setglobal(L,'VK_SHIFT');
  lua_pushnumber(L,VK_CONTROL); lua_setglobal(L,'VK_CONTROL');
  lua_pushnumber(L,VK_MENU); lua_setglobal(L,'VK_MENU');
  lua_pushnumber(L,VK_PAUSE); lua_setglobal(L,'VK_PAUSE');
  lua_pushnumber(L,VK_CAPITAL); lua_setglobal(L,'VK_CAPITAL');
  lua_pushnumber(L,VK_KANA); lua_setglobal(L,'VK_KANA');
  lua_pushnumber(L,VK_HANGUL); lua_setglobal(L,'VK_HANGUL');
  lua_pushnumber(L,VK_JUNJA); lua_setglobal(L,'VK_JUNJA');
  lua_pushnumber(L,VK_FINAL); lua_setglobal(L,'VK_FINAL');
  lua_pushnumber(L,VK_HANJA); lua_setglobal(L,'VK_HANJA');
  lua_pushnumber(L,VK_KANJI); lua_setglobal(L,'VK_KANJI');
  lua_pushnumber(L,VK_CONVERT); lua_setglobal(L,'VK_CONVERT');
  lua_pushnumber(L,VK_NONCONVERT); lua_setglobal(L,'VK_NONCONVERT');
  lua_pushnumber(L,VK_ACCEPT); lua_setglobal(L,'VK_ACCEPT');
  lua_pushnumber(L,VK_MODECHANGE); lua_setglobal(L,'VK_MODECHANGE');
  lua_pushnumber(L,VK_ESCAPE); lua_setglobal(L,'VK_ESCAPE');
  lua_pushnumber(L,VK_SPACE); lua_setglobal(L,'VK_SPACE');
  lua_pushnumber(L,VK_PRIOR); lua_setglobal(L,'VK_PRIOR');
  lua_pushnumber(L,VK_NEXT); lua_setglobal(L,'VK_NEXT');
  lua_pushnumber(L,VK_END); lua_setglobal(L,'VK_END');
  lua_pushnumber(L,VK_HOME); lua_setglobal(L,'VK_HOME');
  lua_pushnumber(L,VK_LEFT); lua_setglobal(L,'VK_LEFT');
  lua_pushnumber(L,VK_UP); lua_setglobal(L,'VK_UP');
  lua_pushnumber(L,VK_RIGHT); lua_setglobal(L,'VK_RIGHT');
  lua_pushnumber(L,VK_DOWN); lua_setglobal(L,'VK_DOWN');
  lua_pushnumber(L,VK_SELECT); lua_setglobal(L,'VK_SELECT');
  lua_pushnumber(L,VK_PRINT); lua_setglobal(L,'VK_PRINT');
  lua_pushnumber(L,VK_EXECUTE); lua_setglobal(L,'VK_EXECUTE');
  lua_pushnumber(L,VK_SNAPSHOT); lua_setglobal(L,'VK_SNAPSHOT');
  lua_pushnumber(L,VK_INSERT); lua_setglobal(L,'VK_INSERT');
  lua_pushnumber(L,VK_DELETE); lua_setglobal(L,'VK_DELETE');
  lua_pushnumber(L,VK_HELP); lua_setglobal(L,'VK_HELP');
  lua_pushnumber(L,VK_LWIN); lua_setglobal(L,'VK_LWIN');
  lua_pushnumber(L,VK_RWIN); lua_setglobal(L,'VK_RWIN');
  lua_pushnumber(L,VK_APPS); lua_setglobal(L,'VK_APPS');
  lua_pushnumber(L,VK_SLEEP); lua_setglobal(L,'VK_SLEEP');
  lua_pushnumber(L,VK_NUMPAD0); lua_setglobal(L,'VK_NUMPAD0');
  lua_pushnumber(L,VK_NUMPAD1); lua_setglobal(L,'VK_NUMPAD1');
  lua_pushnumber(L,VK_NUMPAD2); lua_setglobal(L,'VK_NUMPAD2');
  lua_pushnumber(L,VK_NUMPAD3); lua_setglobal(L,'VK_NUMPAD3');
  lua_pushnumber(L,VK_NUMPAD4); lua_setglobal(L,'VK_NUMPAD4');
  lua_pushnumber(L,VK_NUMPAD5); lua_setglobal(L,'VK_NUMPAD5');
  lua_pushnumber(L,VK_NUMPAD6); lua_setglobal(L,'VK_NUMPAD6');
  lua_pushnumber(L,VK_NUMPAD7); lua_setglobal(L,'VK_NUMPAD7');
  lua_pushnumber(L,VK_NUMPAD8); lua_setglobal(L,'VK_NUMPAD8');
  lua_pushnumber(L,VK_NUMPAD9); lua_setglobal(L,'VK_NUMPAD9');
  lua_pushnumber(L,VK_MULTIPLY); lua_setglobal(L,'VK_MULTIPLY');
  lua_pushnumber(L,VK_ADD); lua_setglobal(L,'VK_ADD');
  lua_pushnumber(L,VK_SEPARATOR); lua_setglobal(L,'VK_SEPARATOR');
  lua_pushnumber(L,VK_SUBTRACT); lua_setglobal(L,'VK_SUBTRACT');
  lua_pushnumber(L,VK_DECIMAL); lua_setglobal(L,'VK_DECIMAL');
  lua_pushnumber(L,VK_DIVIDE); lua_setglobal(L,'VK_DIVIDE');
  lua_pushnumber(L,VK_F1); lua_setglobal(L,'VK_F1');
  lua_pushnumber(L,VK_F2); lua_setglobal(L,'VK_F2');
  lua_pushnumber(L,VK_F3); lua_setglobal(L,'VK_F3');
  lua_pushnumber(L,VK_F4); lua_setglobal(L,'VK_F4');
  lua_pushnumber(L,VK_F5); lua_setglobal(L,'VK_F5');
  lua_pushnumber(L,VK_F6); lua_setglobal(L,'VK_F6');
  lua_pushnumber(L,VK_F7); lua_setglobal(L,'VK_F7');
  lua_pushnumber(L,VK_F8); lua_setglobal(L,'VK_F8');
  lua_pushnumber(L,VK_F9); lua_setglobal(L,'VK_F9');
  lua_pushnumber(L,VK_F10); lua_setglobal(L,'VK_F10');
  lua_pushnumber(L,VK_F11); lua_setglobal(L,'VK_F11');
  lua_pushnumber(L,VK_F12); lua_setglobal(L,'VK_F12');
  lua_pushnumber(L,VK_F13); lua_setglobal(L,'VK_F13');
  lua_pushnumber(L,VK_F14); lua_setglobal(L,'VK_F14');
  lua_pushnumber(L,VK_F15); lua_setglobal(L,'VK_F15');
  lua_pushnumber(L,VK_F16); lua_setglobal(L,'VK_F16');
  lua_pushnumber(L,VK_F17); lua_setglobal(L,'VK_F17');
  lua_pushnumber(L,VK_F18); lua_setglobal(L,'VK_F18');
  lua_pushnumber(L,VK_F19); lua_setglobal(L,'VK_F19');
  lua_pushnumber(L,VK_F20); lua_setglobal(L,'VK_F20');
  lua_pushnumber(L,VK_F21); lua_setglobal(L,'VK_F21');
  lua_pushnumber(L,VK_F22); lua_setglobal(L,'VK_F22');
  lua_pushnumber(L,VK_F23); lua_setglobal(L,'VK_F23');
  lua_pushnumber(L,VK_F24); lua_setglobal(L,'VK_F24');
  lua_pushnumber(L,VK_NUMLOCK); lua_setglobal(L,'VK_NUMLOCK');
  lua_pushnumber(L,VK_SCROLL); lua_setglobal(L,'VK_SCROLL');
  lua_pushnumber(L,VK_LSHIFT); lua_setglobal(L,'VK_LSHIFT');
  lua_pushnumber(L,VK_RSHIFT); lua_setglobal(L,'VK_RSHIFT');
  lua_pushnumber(L,VK_LCONTROL); lua_setglobal(L,'VK_LCONTROL');
  lua_pushnumber(L,VK_RCONTROL); lua_setglobal(L,'VK_RCONTROL');
  lua_pushnumber(L,VK_LMENU); lua_setglobal(L,'VK_LMENU');
  lua_pushnumber(L,VK_RMENU); lua_setglobal(L,'VK_RMENU');

  lua_pushnumber(L,VK_BROWSER_BACK); lua_setglobal(L,'VK_BROWSER_BACK');
  lua_pushnumber(L,VK_BROWSER_FORWARD); lua_setglobal(L,'VK_BROWSER_FORWARD');
  lua_pushnumber(L,VK_BROWSER_REFRESH); lua_setglobal(L,'VK_BROWSER_REFRESH');
  lua_pushnumber(L,VK_BROWSER_STOP); lua_setglobal(L,'VK_BROWSER_STOP');
  lua_pushnumber(L,VK_BROWSER_SEARCH); lua_setglobal(L,'VK_BROWSER_SEARCH');
  lua_pushnumber(L,VK_BROWSER_FAVORITES); lua_setglobal(L,'VK_BROWSER_FAVORITES');
  lua_pushnumber(L,VK_BROWSER_HOME); lua_setglobal(L,'VK_BROWSER_HOME');
  lua_pushnumber(L,VK_VOLUME_MUTE); lua_setglobal(L,'VK_VOLUME_MUTE');
  lua_pushnumber(L,VK_VOLUME_DOWN); lua_setglobal(L,'VK_VOLUME_DOWN');
  lua_pushnumber(L,VK_VOLUME_UP); lua_setglobal(L,'VK_VOLUME_UP');
  lua_pushnumber(L,VK_MEDIA_NEXT_TRACK); lua_setglobal(L,'VK_MEDIA_NEXT_TRACK');
  lua_pushnumber(L,VK_MEDIA_PREV_TRACK); lua_setglobal(L,'VK_MEDIA_PREV_TRACK');
  lua_pushnumber(L,VK_MEDIA_STOP); lua_setglobal(L,'VK_MEDIA_STOP');
  lua_pushnumber(L,VK_MEDIA_PLAY_PAUSE); lua_setglobal(L,'VK_MEDIA_PLAY_PAUSE');
  lua_pushnumber(L,VK_LAUNCH_MAIL); lua_setglobal(L,'VK_LAUNCH_MAIL');
  lua_pushnumber(L,VK_LAUNCH_MEDIA_SELECT); lua_setglobal(L,'VK_LAUNCH_MEDIA_SELECT');
  lua_pushnumber(L,VK_LAUNCH_APP1); lua_setglobal(L,'VK_LAUNCH_APP1');
  lua_pushnumber(L,VK_LAUNCH_APP2); lua_setglobal(L,'VK_LAUNCH_APP2');

  lua_pushnumber(L,VK_OEM_1); lua_setglobal(L,'VK_OEM_1');
  lua_pushnumber(L,VK_OEM_PLUS); lua_setglobal(L,'VK_OEM_PLUS');
  lua_pushnumber(L,VK_OEM_COMMA); lua_setglobal(L,'VK_OEM_COMMA');
  lua_pushnumber(L,VK_OEM_MINUS); lua_setglobal(L,'VK_OEM_MINUS');
  lua_pushnumber(L,VK_OEM_PERIOD); lua_setglobal(L,'VK_OEM_PERIOD');
  lua_pushnumber(L,VK_OEM_2); lua_setglobal(L,'VK_OEM_2');
  lua_pushnumber(L,VK_OEM_3); lua_setglobal(L,'VK_OEM_3');
  lua_pushnumber(L,VK_OEM_4); lua_setglobal(L,'VK_OEM_4');
  lua_pushnumber(L,VK_OEM_5); lua_setglobal(L,'VK_OEM_5');
  lua_pushnumber(L,VK_OEM_6); lua_setglobal(L,'VK_OEM_6');
  lua_pushnumber(L,VK_OEM_7); lua_setglobal(L,'VK_OEM_7');
  lua_pushnumber(L,VK_OEM_8); lua_setglobal(L,'VK_OEM_8');
  lua_pushnumber(L,VK_OEM_102); lua_setglobal(L,'VK_OEM_102');
  lua_pushnumber(L,VK_PACKET); lua_setglobal(L,'VK_PACKET');
  lua_pushnumber(L,VK_PROCESSKEY); lua_setglobal(L,'VK_PROCESSKEY');
  lua_pushnumber(L,VK_ATTN); lua_setglobal(L,'VK_ATTN');
  lua_pushnumber(L,VK_CRSEL); lua_setglobal(L,'VK_CRSEL');
  lua_pushnumber(L,VK_EXSEL); lua_setglobal(L,'VK_EXSEL');
  lua_pushnumber(L,VK_EREOF); lua_setglobal(L,'VK_EREOF');
  lua_pushnumber(L,VK_PLAY); lua_setglobal(L,'VK_PLAY');
  lua_pushnumber(L,VK_ZOOM); lua_setglobal(L,'VK_ZOOM');
  lua_pushnumber(L,VK_NONAME); lua_setglobal(L,'VK_NONAME');
  lua_pushnumber(L,VK_PA1); lua_setglobal(L,'VK_PA1');
  lua_pushnumber(L,VK_OEM_CLEAR); lua_setglobal(L,'VK_OEM_CLEAR');

  lua_pushnumber(L,0); lua_setglobal(L,'False');
  lua_pushnumber(L,1); lua_setglobal(L,'True');

  //lua_pushstring(L,PChar(ExtractFileDir(ParamStr(0)))); lua_setglobal(L,'WorkingDirectory');

  lua_pushnumber(L,0); lua_setglobal(L,'cBlack');
  lua_pushnumber(L,128); lua_setglobal(L,'cMaroon');
  lua_pushnumber(L,32768); lua_setglobal(L,'cGreen');
  lua_pushnumber(L,32896); lua_setglobal(L,'cOlive');
  lua_pushnumber(L,8388608); lua_setglobal(L,'cNavy');
  lua_pushnumber(L,8388736); lua_setglobal(L,'cPurple');
  lua_pushnumber(L,8421376); lua_setglobal(L,'cTeal');
  lua_pushnumber(L,8421504); lua_setglobal(L,'cGray');
  lua_pushnumber(L,12632256); lua_setglobal(L,'cSilver');
  lua_pushnumber(L,255); lua_setglobal(L,'cRed');
  lua_pushnumber(L,65280); lua_setglobal(L,'cLime');
  lua_pushnumber(L,65535); lua_setglobal(L,'cYellow');
  lua_pushnumber(L,16711680); lua_setglobal(L,'cBlue');
  lua_pushnumber(L,16711935); lua_setglobal(L,'cFuchsia');
  lua_pushnumber(L,16776960); lua_setglobal(L,'cAqua');
  lua_pushnumber(L,16777215); lua_setglobal(L,'cWhite');

  // Переменные дополнительной палитры
  SetConst('cAirForceBlue',11045469);
  SetConst('cAliceBlue',16775408);
  SetConst('cAlizarinCrimson',3548899);
  SetConst('cAlmond',13491951);
  SetConst('cAmaranth',5254117);
  SetConst('cAmber',49151);
  SetConst('cAmericanRose',4064255);
  SetConst('cAmethyst',13395609);
  SetConst('cAntiFlashWhite',16053234);
  SetConst('cAntiqueWhite',14150650);
  SetConst('cAppleGreen',46733);
  SetConst('cAsparagus',6004859);
  SetConst('cAqua',16776960);
  SetConst('cAquamarine',13959039);
  SetConst('cArmyGreen',2118475);
  SetConst('cArsenic',4932667);
  SetConst('cAzure',16744192);
  SetConst('cBattleshipGrey',8553604);
  SetConst('cBeige',14480885);
  SetConst('cBistre',2042685);
  SetConst('cBittersweet',6189054);
  SetConst('cBlack',0);
  SetConst('cBlond',12513530);
  SetConst('cBlue',16711680);
  SetConst('cBondiBlue',11965696);
  SetConst('cBostonUniversityRed',204);
  SetConst('cBrass',4368053);
  SetConst('cBrightgreen',65382);
  SetConst('cBrightturquoise',14608392);
  SetConst('cBrightviolet',13435085);
  SetConst('cBronze',3309517);
  SetConst('cBrown',19350);
  SetConst('cBuff',8576240);
  SetConst('cBurgundy',2097296);
  SetConst('cBurntOrange',21964);
  SetConst('cBurntSienna',5338345);
  SetConst('cBurntumber',2372490);
  SetConst('cCamel',7051970);
  SetConst('cCamouflagegreen',7046776);
  SetConst('cCanonicalaubergine',5450103);
  SetConst('cCardinal',3808964);
  SetConst('cCarmine',1573014);
  SetConst('cCarrot',2200045);
  SetConst('cCeladon',11526572);
  SetConst('cCerise',6500830);
  SetConst('cCerulean',10976000);
  SetConst('cCeruleanblue',12472874);
  SetConst('cChartreuse',65407);
  SetConst('cChestnut',6053069);
  SetConst('cChocolate',1993170);
  SetConst('cCinnamon',16251);
  SetConst('cCobalt',11224832);
  SetConst('cCopper',3371960);
  SetConst('cCoral',5275647);
  SetConst('cCorn',6155515);
  SetConst('cCornflowerblue',15570276);
  SetConst('cCream',13696511);
  SetConst('cCrimson',3937500);
  SetConst('cCyan',16776960);
  SetConst('cDarkblue',9109504);
  SetConst('cDarkbrown',2179941);
  SetConst('cDarkcerulean',8275208);
  SetConst('cDarkchestnut',6318488);
  SetConst('cDarkcoral',4545485);
  SetConst('cDarkgoldenrod',755384);
  SetConst('cDarkgreen',2109953);
  SetConst('cDarkIndigo',6422577);
  SetConst('cDarkKhaki',7059389);
  SetConst('cDarkOlive',3303509);
  SetConst('cDarkpastelgreen',3981315);
  SetConst('cDarkPeach',12180223);
  SetConst('cDarkpink',8410343);
  SetConst('cDarksalmon',8034025);
  SetConst('cDarkScarlet',1639254);
  SetConst('cDarkslategray',5197615);
  SetConst('cDarkspringgreen',4551191);
  SetConst('cDarktan',5341585);
  SetConst('cDarktangerine',1222911);
  SetConst('cDarkTeaGreen',11393978);
  SetConst('cDarkturquoise',6447121);
  SetConst('cDarkviolet',8991042);
  SetConst('cDeeppink',9639167);
  SetConst('cDeepskyblue',16760576);
  SetConst('cDenim',12410901);
  SetConst('cDodgerblue',16748574);
  SetConst('cEmerald',7915600);
  SetConst('cEggplant',6684825);
  SetConst('cFawn',7383781);
  SetConst('cFerngreen',4356431);
  SetConst('cFirebrick',2237106);
  SetConst('cFlax',8576238);
  SetConst('cFuchsia',16711935);
  SetConst('cGamboge',1022948);
  SetConst('cGold',55295);
  SetConst('cGoldenrod',2139610);
  SetConst('cGray',8421504);
  SetConst('cGrayAsparagus',4544838);
  SetConst('cGrayTeaGreen',12245706);
  SetConst('cGreen',65280);
  SetConst('cGreenYellow',3145645);
  SetConst('cGradusBlue',16743680);
  SetConst('cHeliotrope',16741343);
  SetConst('cHotpink',12587004);
  SetConst('cIndigo',8519755);
  SetConst('cInternationalorange',20479);
  SetConst('cIndianRed',6053069);
  SetConst('cJade',7055360);
  SetConst('cKhaki',9547971);
  SetConst('cKleinBlue',12875066);
  SetConst('cLavender',16443110);
  SetConst('cLavenderBlush',16118015);
  SetConst('cLemon',1108477);
  SetConst('cLemonCream',13499135);
  SetConst('cLightbrown',4163021);
  SetConst('cLilac',13148872);
  SetConst('cLime',65484);
  SetConst('cLinen',15134970);
  SetConst('cLawnGreen',64636);
  SetConst('cMagenta',16711935);
  SetConst('cMalachite',5364235);
  SetConst('cMaroon',128);
  SetConst('cMauve',6697881);
  SetConst('cMidnightBlue',6697728);
  SetConst('cMintGreen',10026904);
  SetConst('cMossgreen',11394989);
  SetConst('cMountbattenpink',9271961);
  SetConst('cMustard',5823487);
  SetConst('cNavajowhite',11394815);
  SetConst('cNavy',8388608);
  SetConst('cOchre',2258892);
  SetConst('cOldGold',3913167);
  SetConst('cOlive',32896);
  SetConst('cOliveDrab',2330219);
  SetConst('cOrange',42495);
  SetConst('cOrchid',14053594);
  SetConst('cOldLace',15136253);
  SetConst('cPaleBlue',15658671);
  SetConst('cPalebrown',5535384);
  SetConst('cPalecarmine',3489967);
  SetConst('cPalechestnut',11513309);
  SetConst('cPalecornflowerblue',15715755);
  SetConst('cPalemagenta',15041785);
  SetConst('cPalemauve',6710937);
  SetConst('cPalepink',14539514);
  SetConst('cPaleredViolet',9662683);
  SetConst('cPaleSandyBrown',11255258);
  SetConst('cPaleyellow',8576240);
  SetConst('cPang',15531207);
  SetConst('cPapayawhip',14020607);
  SetConst('cPastelgreen',7855479);
  SetConst('cPastelpink',14471679);
  SetConst('cPeach',11855359);
  SetConst('cPeachOrange',10079487);
  SetConst('cPeachYellow',11395066);
  SetConst('cPear',3269329);
  SetConst('cPeriwinkle',16764108);
  SetConst('cPersianblue',16711782);
  SetConst('cPineGreen',7305473);
  SetConst('cPink',13353215);
  SetConst('cPinkOrange',6724095);
  SetConst('cPlum',6684774);
  SetConst('cPowderblue',10040064);
  SetConst('cPuce',10062028);
  SetConst('cPrussianblue',5452032);
  SetConst('cPumpkin',1603071);
  SetConst('cPurple',8388736);
  SetConst('cRawumber',1198707);
  SetConst('cRed',255);
  SetConst('cRedViolet',8721863);
  SetConst('cRobineggblue',13421568);
  SetConst('cRoyalBlue',14772545);
  SetConst('cRusset',5724789);
  SetConst('cRust',934327);
  SetConst('cRosyBrown',9408444);
  SetConst('cSafetyOrange',39423);
  SetConst('cSaffron',3196148);
  SetConst('cSapphire',6759688);
  SetConst('cSana',13141714);
  SetConst('cSalmon',6895615);
  SetConst('cSandybrown',6333684);
  SetConst('cSangria',655506);
  SetConst('cScarlet',9471);
  SetConst('cSchoolbusyellow',55551);
  SetConst('cSeaGreen',5737262);
  SetConst('cSeashell',15660543);
  SetConst('cSelectiveyellow',47871);
  SetConst('cSepia',1327728);
  SetConst('cSilver',12632256);
  SetConst('cSlategray',9470064);
  SetConst('cSpringGreen',8388352);
  SetConst('cSteelblue',11829830);
  SetConst('cSwampgreen',9353132);
  SetConst('cTan',9221330);
  SetConst('cTenne',22477);
  SetConst('cTangerine',52479);
  SetConst('cTeaGreen',12644560);
  SetConst('cTeal',8421376);
  SetConst('cThistle',14204888);
  SetConst('cTurquoise',13161776);
  SetConst('cTitian',474837);
  SetConst('cTransportRed',329420);
  SetConst('cTomato',4678655);
  SetConst('cUltramarine',9374226);
  SetConst('cUnitedNationsBlue',15045211);
  SetConst('cUbuntuorange',1329373);
  SetConst('cVanilla',11265523);
  SetConst('cVermilion',3424995);
  SetConst('cViolet',16711819);
  SetConst('cVioletEggplant',10031513);
  SetConst('cViridian',7176768);
  SetConst('cWheat',11788021);
  SetConst('cWhite',16777215);
  SetConst('cWisteria',14459081);
  SetConst('cWine',3616626);
  SetConst('cXanadu',7898739);
  SetConst('cYellow',65535);
  SetConst('cZinnwaldite',11518699);
  SetConst('cZaffre',11015168);

  // РЕГИСТРАЦИЯ ФУНКЦИЙ ///////////////////////////////////////////////////////
  lua_register(L,'WindowsCreate',@LWindowsCreate);
  lua_register(L,'WindowsDestroy',@LWindowsDestroy);  lua_register(L,'WindowsExists',@LWindowsExists);  lua_register(L,'WindowCenter',@LWindowCenter);  lua_register(L,'WindowSetRectangle',@LWindowSetRectangle);  lua_register(L,'WindowGetRectangle',@LWindowGetRectangle);  lua_register(L,'WindowSetVisible',@LWindowSetVisible);  lua_register(L,'WindowGetVisible',@LWindowGetVisible);  lua_register(L,'WindowSetCaption',@LWindowSetCaption);  lua_register(L,'WindowGetCaption',@LWindowGetCaption);  lua_register(L,'WindowSetIcon',@LWindowSetIcon);  lua_register(L,'WindowsRefresh',@LWindowsRefresh);  lua_register(L,'WindowsStyleAdd',@LWindowsStyleAdd);  lua_register(L,'DisplayGetParemeter',@LDisplayGetParemeter);  lua_register(L,'DisplayMouseSet',@LDisplayMouseSet);  lua_register(L,'DisplayMouseGet',@LDisplayMouseGet);  lua_register(L,'ShowMessage',@LShowMessage);  lua_register(L,'Sleep',@LSleep);
  lua_register(L,'ParameterCount',@LParameterCount);
  lua_register(L,'ParameterString',@LParameterString);
  lua_register(L,'CallFps',@LCallFps);

  lua_register(L,'WindowsGetMouse',@LWindowsGetMouse);
  lua_register(L,'KeyRefresh',@LKeyRefresh);
  lua_register(L,'Key',@LKey);
  lua_register(L,'KeyPressed',@LKeyPressed);
  lua_register(L,'KeyReleased',@LKeyReleased);

  lua_register(L,'RGB',@LRGB);
  lua_register(L,'Chr',@LChr);

  lua_register(L,'FileExists',@LFileExists);

  lua_register(L,'ExternalFree',@LExternalFree);
  lua_register(L,'ExecuteFile',@LExecuteFile);
end;
