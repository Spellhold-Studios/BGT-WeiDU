@echo off
PATH=%SYSTEMROOT%;%SYSTEMROOT%\System;%SYSTEMROOT%\System32

:: detect Windows version :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
VER |find /i "Windows 95" > NUL
IF NOT ERRORLEVEL 1 GOTO SKIP

VER |find /i "Windows 98" > NUL
IF NOT ERRORLEVEL 1 GOTO SKIP

VER |find /i "Windows Millennium" > NUL
IF NOT ERRORLEVEL 1 GOTO SKIP

GOTO NEW
:: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:NEW
echo Windows NT or newer detected. Logging enabled. > bgt\bash.debug

:SKIP