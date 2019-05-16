:: silent installer script

@echo off
setlocal enableExtensions disableDelayedExpansion

:: time to normal form
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%

:: get path 
set /p path="Copy the path of .exe file here: "

:: define silent install switches
set "switches"="/sp /verysilent /supressmsgboxes /norestart /s"

:: start install 
%path% %switches%

:: send log.txt
echo Starting install on %path% 
echo %mydate%:%mytime% Installing %path%
echo %mydate%:%mytime% Installing %path% >> log.txt

:: end the script after installation
:exit
endlocal
goto :eof

:: this script is very basic, might not work on some programs.
:: works for Firefox, Google  Chrome, 7zip etc.
