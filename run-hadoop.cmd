@echo off
REM Source the environment variables
call hadoop-path.bat

hadoop fs -cat /uploads/test_table.csv