@echo off
REM 使用7Zip得到压缩格式7z，压缩等级极限压缩，压缩方法LZMA2，固实，多线程的压缩文件
set MY_7ZIP_PATH="绝对路径\7z.exe"
set MY_FILE_NAME_AND_SUFFIX=%~1
set MY_ARCHIVE_FILE_NAME=%~2
set MY_PASSWORD=%~3
if "%MY_PASSWORD%"=="0" (set /P MY_PASSWORD=输入压缩密码：)

REM 双引号的16进制代码0x22，反斜杠的16进制代码0x5c
%MY_7ZIP_PATH% a -t7z -mx=9 -ms=on -myx=9 -mmt=on -mhe -p%MY_PASSWORD% %MY_ARCHIVE_FILE_NAME%.7z %MY_FILE_NAME_AND_SUFFIX%