@ echo off
:main
cls

echo What will YOU do? [No = 0 / Kill and Restart = 1 / Start = 2 / Kill = 3 / Not Responsed Mode = 4]?
set /p id=
if %id% == 0 goto main
if %id% == 1 goto KnR
if %id% == 2 goto start
if %id% == 3 goto killTask
if %id% == 4 goto notResponsedMode
if %id% == 5 goto notResponsedModeBeta
:notResponsedModeBeta
echo Responsed Mode Beta
timeout -t 5 
tasklist /FI "STATUS eq NOT RESPONDING" | findstr HeroesAndGeneralsDesktop.exe >nul
if %errorlevel% EQU 0 (taskkill /F /PID 322692)
:start
start steam://rungameid/227940
goto main
:killTask
taskkill /IM HeroesAndGeneralsDesktop.exe
goto main
:KnR
taskkill /IM HeroesAndGeneralsDesktop.exe
timeout -t 5 
goto start
:notResponsedMode
start taskmgr.exe
timeout -t 30
goto start
