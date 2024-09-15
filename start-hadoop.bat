@echo off
REM Source the environment variables
call hadoop-path.bat

REM Start Hadoop Distributed File System (DFS)
echo Starting HDFS...
call %HADOOP_HOME%\sbin\start-dfs.cmd

REM Start YARN
echo Starting YARN...
call %HADOOP_HOME%\sbin\start-yarn.cmd

echo HDFS and YARN started successfully.
