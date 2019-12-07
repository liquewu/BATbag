@echo off

REM 统计一级目录下的文件数量
dir /b /a:-d | find /v /c "&#@"