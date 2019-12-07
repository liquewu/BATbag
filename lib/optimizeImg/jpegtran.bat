@echo off
REM 无损压缩JPG格式的图片大小
set JPEGTRAN_PATH="绝对地址\jpegtran.exe"
set JPG_PATH="%~1"
set ORIGIN_JPG_PATH="%~1_tmp"

copy %JPG_PATH% %ORIGIN_JPG_PATH%

%JPEGTRAN_PATH% -copy none -optimize -outfile %JPG_PATH% %JPG_PATH%

set ORIGIN_JPG_SIZE=
for /F "usebackq delims=" %%i in (`dir /B %ORIGIN_JPG_PATH%`) do set ORIGIN_JPG_SIZE=%%~zi

set OPTIMIZE_JPG_SIZE=
for /F "usebackq delims=" %%i in (`dir /B %JPG_PATH%`) do set OPTIMIZE_JPG_SIZE=%%~zi

if %ORIGIN_JPG_SIZE% LEQ %OPTIMIZE_JPG_SIZE% (
move %ORIGIN_JPG_PATH% %JPG_PATH%
) else (
del %ORIGIN_JPG_PATH% 
)