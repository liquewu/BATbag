@echo off
REM ��ȡ�ļ���С
set FILE_PATH_WITH_SUFFIX="%~1"
set FILE_SIZE=

for /F "usebackq delims=" %%i in (`dir /B %FILE_PATH_WITH_SUFFIX%`) do set FILE_SIZE=%%~zi

echo %FILE_SIZE%