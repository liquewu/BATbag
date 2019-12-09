@echo off
REM 同级目录下的各个子目录里的所有文件7z密码压缩后再rar添加恢复记录压缩
set MY_7ZIP_BAT_LIB_PATH=D:\BATbench\lib\7Zip.bat
set MY_WINRAR_BAT_LIB_PATH=D:\BATbench\lib\WinRAR.bat
set /P MY_PASSWORD=输入压缩密码

for /F "usebackq delims=" %%i in (`dir /A:D /B`) do (
call "%MY_7ZIP_BAT_LIB_PATH%" "%%~fi\*" %%~ni "%MY_PASSWORD%"
call "%MY_WINRAR_BAT_LIB_PATH%" %%~ni.7z %%~ni
del %%~ni.7z
)

REM pause