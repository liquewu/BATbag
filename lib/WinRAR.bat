@echo off
REM ʹ��WinRAR�õ�ѹ����ʽRAR��ѹ����ʽ�洢���ֵ��С4096KB��ѹ���־�1GB����ӻָ���¼3%��ѹ���ļ�
set MY_WINRAR_PATH="����·��\Rar.exe"
set MY_FILE_NAME_AND_SUFFIX=%~1
set MY_ARCHIVE_FILE_NAME=%~2

%MY_WINRAR_PATH% a -ma4 -m0 -md4096k -v1g -rr3p %MY_ARCHIVE_FILE_NAME%.rar %MY_FILE_NAME_AND_SUFFIX%