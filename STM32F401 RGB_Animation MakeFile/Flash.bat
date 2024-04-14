@echo off
make clean
make flash
set "FILE=build\main.hex"
if exist "%FILE%" (
    msg * "Project Flashed Successfully"
) else (
    msg * "Project Flashing Failed"
)