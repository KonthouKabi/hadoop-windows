#!/bin/bash

# Set Hadoop installation path
export HADOOP_HOME=./hadoop-3.3.6

# Set HDFS home to Hadoop home
export HADOOP_HDFS_HOME=$HADOOP_HOME

# Set Java home using the given path
export JAVA_HOME=./java-lib/OpenJDK11/jdk-11.0.18+10

# Add Hadoop and Java binaries to the system PATH
export PATH=$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

# Clear any pre-existing Java tool options
export JAVA_TOOL_OPTIONS=

echo "Hadoop and Java environment variables are set successfully."
