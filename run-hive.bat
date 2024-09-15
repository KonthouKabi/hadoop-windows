@echo off
REM Source the environment variables
call hive-path.bat


REM Start Hive
echo Starting Hive with log4j2 configuration from: %HIVE_LOG4J%
hive --hiveconf hive.log4j2.file=hivelib/apache-hive-3.1.3-bin/conf/hive-log4j2.properties
REM set HIVE_LOG_LEVEL=ERROR
