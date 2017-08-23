del dv_foxhelp91.chm 
del _ErrorLog.Log 
del dv_foxhelp.log 
del dv_foxhelp.chm 
"C:\Program Files (x86)\HTML Help Workshop\hhc.exe" dv_foxhelp91.hhp 
ren _ErrorLog.Log dv_foxhelp.log 
ren dv_foxhelp91.chm dv_foxhelp.chm 
type dv_foxhelp.log  
pause 
