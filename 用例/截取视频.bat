@echo off
REM ʹ��ffmpeg��ȡ��Ƶ
set FFMPEG_PATH="D:\BATbench\lib\ffmpeg.exe"

REM �����Ǵ�00:23:00��ʼ��ȡ90�룬��0:22:30�������ҵ��ؼ�֡��Ȼ���ڽ�������30������֡����
%FFMPEG_PATH% -ss 00:22:30 -i "ԭ��Ƶ����.mp4" -ss 00:00:30 -t 90 -y -c copy "ԭ��Ƶ����_output.mp4"

REM pause