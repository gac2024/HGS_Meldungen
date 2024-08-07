@echo off
cls
echo Versenden von Meldungen an das HGS
echo


Set Projekt=%1
Set Meldung=%2
Set Testfall=%3
set exportfile=%4
set path_self=%~dp0


echo java -jar sendMessage.jar -PROJEKTNAME %Projekt%  -MELDUNGSNAME %Meldung% -TESTFALLNAME %Testfall% -MAINPATH %path_self% 
java -jar sendMessage.jar -PROJEKTNAME %Projekt%  -MELDUNGSNAME %Meldung% -TESTFALLNAME %Testfall% -MAINPATH %path_self%


EXIT /B %ERRORLEVEL%
