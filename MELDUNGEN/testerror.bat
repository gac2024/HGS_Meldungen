@ECHO OFF
PING 10.0.0.123
IF ERRORLEVEL 1 GOTO NOT-THERE
ECHO IP ADDRESS EXISTS
PAUSE
EXIT /B
:NOT-THERE
ECHO IP ADDRESS NOT NOT EXIST
PAUSE
EXIT /B %ERRORLEVEL%