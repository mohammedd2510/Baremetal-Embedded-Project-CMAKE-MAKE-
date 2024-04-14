@echo off
make clean
make build
set "FILE=build\main.hex"
if exist "%FILE%" (
    msg * "Building Process Successfully - Hex File Generated "
) else (
    msg * "Building Failed - Hex File Not Generated "
)

