@echo off


setlocal enableDelayedExpansion 
cls

rem Hier muss der Type eingegebene werden
set MYTYPE=%1%
set path_self=%~dp0

set MYMAIN=%path_self%\TEMPLATES\IN\
set MYDIR=%MYMAIN%\%MYTYPE%
set EXPORT=%MYMAIN%\..\OUT\%MYTYPE%

if not exist "%EXPORT%" ( 
    echo Creating Folder "%EXPORT%" 
    mkdir "%EXPORT%"    
)


for /F "delims=" %%x in ('dir /B/D %MYDIR%') do (
  set FILENAME="%MYDIR%\%%x"
  echo ===========================  Convert  !FILENAME! ===========================
  echo convert !FILENAME! to  %EXPORT%\%MYTYPE%.ini
  echo java -jar convertMessage.jar -INXML !FILENAME! -OUTINI "%EXPORT%\%MYTYPE%.ini"
  start "convertMessage"  /WAIT  java -jar convertMessage.jar -INXML !FILENAME!  -OUTINI "%EXPORT%\%MYTYPE%.ini"

  echo ======================================================
)



pause 
























