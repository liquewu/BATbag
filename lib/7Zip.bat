@echo off
REM ʹ��7Zip�õ�ѹ����ʽ7z��ѹ���ȼ�����ѹ����ѹ������LZMA2����ʵ�����̵߳�ѹ���ļ�
set MY_7ZIP_PATH="����·��\7z.exe"
set MY_FILE_NAME_AND_SUFFIX=%~1
set MY_ARCHIVE_FILE_NAME=%~2
set MY_PASSWORD=%~3
if "%MY_PASSWORD%"=="0" (set /P MY_PASSWORD=����ѹ�����룺)

REM ˫���ŵ�16���ƴ���0x22����б�ܵ�16���ƴ���0x5c
%MY_7ZIP_PATH% a -t7z -mx=9 -ms=on -myx=9 -mmt=on -mhe -p%MY_PASSWORD% %MY_ARCHIVE_FILE_NAME%.7z %MY_FILE_NAME_AND_SUFFIX%