@echo off
REM 使用WinRAR得到压缩格式RAR，压缩方式存储，字典大小4096KB，压缩分卷1GB，添加恢复记录3%的压缩文件
set MY_WINRAR_PATH="绝对路径\Rar.exe"
set MY_FILE_NAME_AND_SUFFIX=%~1
set MY_ARCHIVE_FILE_NAME=%~2

%MY_WINRAR_PATH% a -ma4 -m0 -md4096k -v1g -rr3p %MY_ARCHIVE_FILE_NAME%.rar %MY_FILE_NAME_AND_SUFFIX%