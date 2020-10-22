@echo off
REM 使用ffmpeg截取视频
set FFMPEG_PATH="D:\BATbench\lib\ffmpeg.exe"

REM 例子是从00:23:00开始截取90秒，在0:22:30附近查找到关键帧。然后在接下来的30秒内逐帧查找
%FFMPEG_PATH% -ss 00:22:30 -i "原视频名称.mp4" -ss 00:00:30 -t 90 -y -c copy "原视频名称_output.mp4"

REM pause