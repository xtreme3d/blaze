--Создание и настройка окна программы
window_handle=WindowsCreate("Сообщение:",WS_OVERLAPPED,WS_SYSMENU,0,32,32,1280,720,0)
WindowCenter(window_handle)
WindowSetIcon(window_handle,"Logo.ico")

--Инициализация движков программы
Init_xtreme3d("xtreme3d.dll")--Графический

--Настройка компонентов графического движка
xEngineCreate();

bgColor=cDkgray
view1=xViewerCreate(0,0,1280,720,window_handle)
xViewerSetBackgroundColor(view1,bgColor)
xViewerSetLighting(view1,False)
xViewerEnableFog(view1,True)
xViewerSetFogColor(view1,bgColor)
xViewerSetFogDistance(view1,50,100)
xViewerSetAntiAliasing(view1,aaNone)

back=xDummycubeCreate(0)
scene=xDummycubeCreate(0)
front=xDummycubeCreate(0)

camPos=xDummycubeCreate(scene)
xObjectSetPosition(camPos,0,0,10)

camera=xCameraCreate(camPos)
xObjectSetPosition(camPos,0,3,5)
xCameraSetViewDepth(camera,500)
xCameraSetFocal(camera,60)
xCameraSetNearPlaneBias(camera,0.2)
xViewerSetCamera(view1,camera)

ftfont=xTTFontCreate('../Examples/data/unicode/NotoSans-Regular.ttf',20)
text=xHUDTextCreate(ftfont,xTextConvertANSIToUTF8('BLAZE – Инструмент программирования основанный на скриптовом языке Lua.'..string.char(13)..
                    'Основная идея программы заключается в объединении графического,'..string.char(13)..
						        'звукового, физического движков для создания игр и программ.'..string.char(13)..
						        'Для ознакомления с примерами перейдите в папку "Examples"'),front)
xHUDTextSetColor(text,cWhite,1.0)
xObjectSetPosition(text,32,32,0)

while WindowsExists(window_handle) do
	WindowsRefresh()
	KeyRefresh()
	fps=CallFps(30)
	dt=1/fps
	
	xUpdate(dt)
	xViewerRender(view1)
	
	if KeyReleased(VK_ESCAPE) then WindowsDestroy(window_handle) end
end

--EngineDestroy()