#!/bin/bash

# Set Hadoop installation path
export HADOOP_HOME=./hadoop-3.3.6

# Set Java home using the given path
export JAVA_HOME=./java8-lib/OpenJDK8/jdk8u382-b05

# Set Hive home
export HIVE_HOME=./hivelib/apache-hive-3.1.3-bin

# Set Log4j2 properties location
export HIVE_LOG4J=./hivelib/apache-hive-3.1.3-bin/conf/hive-log4j2.properties

# Set Hadoop options for Log4j
export HADOOP_OPTS="-Dlog4j.configuration=file:$HIVE_LOG4J"

# Add Hadoop, Java, and Hive binaries to the system PATH
export PATH=$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$HIVE_HOME/bin:$PATH

# Clear any pre-existing Java tool options
export JAVA_TOOL_OPTIONS=

echo "Environment variables are set successfully."
