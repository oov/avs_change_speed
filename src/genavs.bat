@echo off
rem 再生速度変更 AviSynth スクリプトジェネレータ $VERSION$ ( $GITHASH$ ) by oov
set TEMPLATE=%~dp0template.txt
set OUTPUT=%3
chcp 65001 > NUL
(echo.path = "%~f2") > %OUTPUT%
(echo.speed = %~1) >> %OUTPUT%
(echo.) >> %OUTPUT%
for /f "tokens=* delims=0123456789 eol=" %%X in ('findstr /n "^" %TEMPLATE%') do (
  set Y=%%X
  setlocal enabledelayedexpansion
  (echo.!Y:~1!) >> %OUTPUT%
  endlocal
)
