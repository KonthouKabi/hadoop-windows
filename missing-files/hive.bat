@echo off

REM Set Hadoop installation path
set "HADOOP_HOME=%cd%\hadoop-3.3.6"
REM Set HDFS home
set HADOOP_HDFS_HOME=%HADOOP_HOME%
REM Set Java home
set "JAVA_HOME=%cd%\java8-lib\OpenJDK8\jdk8u382-b05"
REM Set Hive home
set "HIVE_HOME=%cd%\hivelib\apache-hive-3.1.3-bin"
REM Add Hadoop, Java, and Hive binaries to the system PATH
set PATH=%JAVA_HOME%\bin;%HADOOP_HOME%\bin;%HADOOP_HOME%\sbin;%HIVE_HOME%\bin;%PATH%

REM Set Hadoop classpath (include all JAR files in Hadoop's lib directory)
set HADOOP_CLASSPATH=%HADOOP_HOME%\share\hadoop\common\*;%HADOOP_HOME%\share\hadoop\hdfs\*;%HADOOP_HOME%\share\hadoop\mapreduce\*;%HADOOP_HOME%\share\hadoop\yarn\*

REM Set Hive classpath to include Hive libraries and missing JARs
set HIVE_CLASSPATH=%HIVE_HOME%\lib\*;%HADOOP_CLASSPATH%;%HADOOP_HOME%\share\hadoop\common\lib\*;%HIVE_HOME%\lib\stax-api-1.0.1.jar;%HIVE_HOME%\lib\woodstox-core-5.4.0.jar;%HIVE_HOME%\lib\commons-collections-3.2.2.jar

REM Start Hive CLI
REM echo "%HIVE_CLASSPATH%"
java -cp "%HIVE_CLASSPATH%" org.apache.hadoop.hive.cli.CliDriver %*
