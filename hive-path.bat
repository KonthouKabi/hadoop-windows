@echo off
REM Set Hadoop installation path using short path to avoid issues with spaces
set HADOOP_HOME=.\hadoop-3.3.6
REM Set Java home using the given path
set JAVA_HOME=.\java8-lib\OpenJDK8\jdk8u382-b05
REM Set Hive home
set HIVE_HOME=.\hivelib\apache-hive-3.1.3-bin
REM Set Log4j2 properties location
set HIVE_LOG4J=.\hivelib\apache-hive-3.1.3-bin\conf\hive-log4j2.properties
set HADOOP_OPTS=-Dlog4j.configuration=file:%HIVE_LOG4J%

REM Add Hadoop, Java, and Hive binaries to the system PATH
set PATH=%JAVA_HOME%\bin;%HADOOP_HOME%\bin;%HADOOP_HOME%\sbin;%HIVE_HOME%\bin;%PATH%
set JAVA_TOOL_OPTIONS=