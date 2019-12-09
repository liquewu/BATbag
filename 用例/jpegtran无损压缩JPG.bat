@echo off

set BAT_LIB_PATH=D:\BATbench\lib\optimizeImg\jpegtran.bat

forfiles /M *.jpg /C "cmd /c call %BAT_LIB_PATH% @path"
forfiles /M *.jpeg /C "cmd /c call %BAT_LIB_PATH% @path"

REM pause