@echo off
REM ͬ��Ŀ¼�µĸ�����Ŀ¼��������ļ�7z����ѹ������rar��ӻָ���¼ѹ��
set MY_7ZIP_BAT_LIB_PATH=D:\BATbench\lib\7Zip.bat
set MY_WINRAR_BAT_LIB_PATH=D:\BATbench\lib\WinRAR.bat
set /P MY_PASSWORD=����ѹ������

for /F "usebackq delims=" %%i in (`dir /A:D /B`) do (
call "%MY_7ZIP_BAT_LIB_PATH%" "%%~fi\*" %%~ni "%MY_PASSWORD%"
call "%MY_WINRAR_BAT_LIB_PATH%" %%~ni.7z %%~ni
del %%~ni.7z
)

REM pause