@echo off
cd build
cmake ..
make _clean
make build
set "FILE=main.hex"
if exist "%FILE%" (
    msg * "Building Process Successfully - Hex File Generated "
) else (
    msg * "Building Failed - Hex File Not Generated "
)
