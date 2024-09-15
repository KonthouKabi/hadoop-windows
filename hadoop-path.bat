@echo off
REM Set Hadoop installation path using short path to avoid issues with spaces
set HADOOP_HOME=.\hadoop-3.3.6
REM Set HDFS home
set HADOOP_HDFS_HOME=%HADOOP_HOME%
REM Set Java home using the given path
set JAVA_HOME=.\java-lib\OpenJDK11\jdk-11.0.18+10
REM Add Hadoop and Java binaries to the system PATH
set PATH=%JAVA_HOME%\bin;%HADOOP_HOME%\bin;%HADOOP_HOME%\sbin;%PATH%
set JAVA_TOOL_OPTIONS=