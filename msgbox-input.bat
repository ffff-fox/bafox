@echo off
:: حفظ المعاملات
set "text=%~1"
set "yes=%~2"
set "no=%~3"

:: إنشاء VBScript مؤقت
echo Set sh = CreateObject("WScript.Shell") >msgbox.vbs
echo r = sh.Popup("%text%", 0, "رسالة", 4 + 32) >> msgbox.vbs
echo If r = 6 Then WScript.Echo "%yes%" Else WScript.Echo "%no%" >> msgbox.vbs

:: تشغيل VBScript وجلب النتيجة
for /f %%A in ('cscript //nologo msgbox.vbs') do set "result=%%A"
del msgbox.vbs

