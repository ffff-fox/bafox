@echo off

setlocal enabledelayedexpansion
set "tempfile=temp.bfx"
echo. > %tempfile%

:loop
set /p "line=> "
if /i "%line%"=="run" (
    echo Running Bafox code...
    for /f "delims=" %%a in (%tempfile%) do call %%a
    del %tempfile%
    
)
echo %line% >> %tempfile%

goto :loop
