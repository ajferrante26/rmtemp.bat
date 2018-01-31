rem  ==============================================================================
rem | Program Name     : rmtemp.bat
rem | Author           : Anthony Ferrante
rem | First Deployment : January 2018
rem |
rem | Instructions: 
rem |     Drag this file to the client desktop and run, it will delete itself after
rem |     it is done.  
rem | 
rem | USAGE: 
rem |     This script removes temporary system and internet files to free
rem |     up space within the system so other tasks can be completed like 
rem |     rebuilding an outlook profile or performing a disk cleanup. The 
rem |     template for this script is included below in case there are more
rem |     directories to be added. DO NOT EDIT ANYTHING OTHER THAN <PATH>!!
rem | 
rem | TEMPLATE:
rem |     del /q "C:\Users\%username%\<PATH>\*"
rem |     FOR /D %%p IN ("C:\Users\%username%\<PATH>\*.*") DO rmdir "%%p" /s /q
rem  ==============================================================================

taskkill /IM AcroRd32.exe
taskkill /IM outlook.exe

del /q "C:\Users\%username%\AppData\Local\Temp\*"
FOR /D %%p IN ("C:\Users\%username%\AppData\Local\Temp\*.*") DO rmdir "%%p" /s /q

del /q "C:\Users\%username%\AppData\Local\Microsoft\Windows\"Temporary Internet Files"\content.outlook\*"
FOR /D %%p IN ("C:\Users\%username%\AppData\Local\Microsoft\Windows\"Temporary Internet Files"\content.outlook\*.*") DO rmdir "%%p" /s /q

dir C:\ | findstr "Temp" >> C:\Users\%username%\Desktop\tmplist.txt
for /F "tokens=1-5" %%a in (C:\Users\%username%\Desktop\tmplist.txt) DO (FOR /D %%p IN ("C:\%%a\*.*") DO (del /q "C:\Users\%username%\AppData\Local\Temp\*"))
for /F "tokens=1-5" %%a in (C:\Users\%username%\Desktop\tmplist.txt) DO (del /q "C:\%%a\*")
del /F C:\Users\%username%\Desktop\tmplist.txt

del /f C:\Users\%username%\Desktop\rmtemp.bat
