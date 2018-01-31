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
