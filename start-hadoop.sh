#!/bin/bash

# Source the environment variables from another script
source ./hadoop-path.sh

# Start Hadoop Distributed File System (DFS)
echo "Starting HDFS..."
$HADOOP_HOME/sbin/start-dfs.sh

# Start YARN
echo "Starting YARN..."
$HADOOP_HOME/sbin/start-yarn.sh

echo "HDFS and YARN started successfully."
