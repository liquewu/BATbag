@echo off
REM ʹ��ffmpeg�ȽϾ�ȷ�ؽ�ȡ��Ƶ
set FFMPEG_PATH="D:\BATbench\lib\ffmpeg.exe"

REM �����Ǵ�00:23:20.500��ʼ��ȡ90��230���룬��00:23:00�������ҵ��ؼ�֡��Ȼ���ڽ�������20��500��������֡���ң������-c copy��ü���-avoid_negative_ts 1
%FFMPEG_PATH% -ss 00:23:00 -accurate_seek -i "ԭ��Ƶ����.mp4" -ss 00:00:20.500 -t 0:1:30.230 -y -c copy -avoid_negative_ts 1 "ԭ��Ƶ����_output.mp4"

REM pause