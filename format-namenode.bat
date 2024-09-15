@echo off
REM Source the environment variables
call hadoop-path.bat

REM format nameNode
hdfs namenode -format
