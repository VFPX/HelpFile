rem set HTML_HELP_WORKSHOP_DIR=C:\Program Files\HTML Help Workshop  
set HTML_HELP_WORKSHOP_DIR=C:\Program Files (x86)\HTML Help Workshop  
del _ErrorLog.Log 
del dv_foxhelp91.chm 
del dv_foxhelp.log 
del dv_foxhelp.chm 
"%HTML_HELP_WORKSHOP_DIR%\hhc.exe" dv_foxhelp91.hhp 
ren _ErrorLog.Log dv_foxhelp.log 
ren dv_foxhelp91.chm dv_foxhelp.chm 
type dv_foxhelp.log  
pause 
