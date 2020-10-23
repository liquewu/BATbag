@echo off
REM 使用ffmpeg比较精确地截取视频
set FFMPEG_PATH="D:\BATbench\lib\ffmpeg.exe"

REM 例子是从00:23:20.500开始截取90秒230毫秒，在00:23:00附近查找到关键帧。然后在接下来的20秒500毫秒内逐帧查找，如果用-c copy最好加上-avoid_negative_ts 1
%FFMPEG_PATH% -ss 00:23:00 -accurate_seek -i "原视频名称.mp4" -ss 00:00:20.500 -t 0:1:30.230 -y -c copy -avoid_negative_ts 1 "原视频名称_output.mp4"

REM pause