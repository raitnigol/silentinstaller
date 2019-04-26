@echo off
setlocal enableExtensions disableDelayedExpansion

:: korrigeerime aja normaalsele kujule
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%

:: palume kasutajal .exe fail, mida soovitakse silent installida, tirida CMD-sse.
echo ###########=====SILENT_INSTALLER=====###########
echo ###########========= v1.0.0 =========###########
set /p path="Tiri siia oma .exe installer, mille peal soovid kasutada silent installi: "

:: alustame silent installi.
%path% /SP /VERYSILENT /SUPRESSMSGBOXES /NORESTART /S

:: saadame log.txt-sse infot
echo Alustan installi %path% parameetrite /SP /VERYSILENT /SUPRESSMSGBOXES /NORESTART ja /S
echo %mydate%:%mytime% Alustan installi %path% parameetrite /SP /VERYSILENT /SUPRESSMSGBOXES /NORESTART ja /S >> log.txt

:exit
endlocal
goto :eof

:: kood on algeline, v6ib olla katkine.