@echo off
cd build
cmake ..
make _clean
make flash
set "FILE=main.hex"
if exist "%FILE%" (
    msg * "Project Flashed Successfully"
) else (
    msg * "Project Flashing Failed"
)