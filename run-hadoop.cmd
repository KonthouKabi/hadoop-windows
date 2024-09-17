@echo off
REM Source the environment variables
call hadoop-path.bat
REM ****************************** COMMAND SCRIPT *******************************
REM USE THIS SCRIPT AS YOUR COMMAND INTERFACE
hadoop fs -ls /