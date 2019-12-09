@echo off

set MY_7ZIP_BAT_LIB_PATH=D:\BATbench\lib\7Zip.bat
set MY_FILE_SUFFIX=mp4
set /P MY_PASSWORD=输入压缩密码

forfiles /M *.%MY_FILE_SUFFIX% /C "cmd /c call "%MY_7ZIP_BAT_LIB_PATH%" @file @fname %MY_PASSWORD%"

REM pause