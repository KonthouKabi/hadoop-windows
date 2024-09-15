@echo off
setlocal

:: Set Hive and Hadoop home paths
set "HIVE_HOME=%cd%\hivelib\apache-hive-3.1.3-bin"
set "HADOOP_HOME=%cd%\hadoop-3.3.6"

:: Set classpath to include Hive and Hadoop jars and dependencies
set CLASSPATH=%HIVE_HOME%\lib\*;%HIVE_HOME%\conf;%HADOOP_HOME%\share\hadoop\common\*;%HADOOP_HOME%\share\hadoop\common\lib\*;%HADOOP_HOME%\share\hadoop\hdfs\*;%HADOOP_HOME%\share\hadoop\mapreduce\*;%HADOOP_HOME%\share\hadoop\yarn\*

:: Run the MetastoreSchemaTool class
java org.apache.hadoop.hive.metastore.tools.MetastoreSchemaTool %*

endlocal
