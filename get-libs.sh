#!/bin/bash

# ******************************** Getting JAVA 8 ********************************
echo "Downloading OpenJDK 8..."
wget -O java8-lib/OpenJDK8.zip https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u382-b05/OpenJDK8U-jdk_x64_linux_hotspot_8u382b05.tar.gz

echo "Extracting OpenJDK 8..."
mkdir -p java8-lib/OpenJDK8
tar -xvf java8-lib/OpenJDK8.zip -C java8-lib/OpenJDK8
echo "OpenJDK 8 Installed!!"

# ******************************** Getting JAVA 11 ********************************
echo "Downloading OpenJDK 11..."
wget -O java-lib/OpenJDK11.zip https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18+10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz

echo "Extracting OpenJDK 11..."
mkdir -p java-lib/OpenJDK11
tar -xvf java-lib/OpenJDK11.zip -C java-lib/OpenJDK11
echo "OpenJDK 11 Installed!!"

# ******************************** Getting Hadoop 3.3.6 ********************************
echo "Downloading Hadoop 3.3.6..."
wget -O hadoop-3.3.6.tar.gz https://archive.apache.org/dist/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz

echo "Extracting Hadoop..."
tar -xvf hadoop-3.3.6.tar.gz
echo "Hadoop Installed!!"

# ******************************** Getting Hive ********************************
echo "Downloading Hive..."
wget -O hivelib/apache-hive-3.1.3-bin.tar.gz https://downloads.apache.org/hive/hive-3.1.3/apache-hive-3.1.3-bin.tar.gz

echo "Extracting Hive..."
mkdir -p hivelib
tar -xvf hivelib/apache-hive-3.1.3-bin.tar.gz -C hivelib
echo "Hive Installed!!"

# ******************************** Calling additional scripts ********************************
echo "Running placemissingfiles.sh..."
./placemissingfiles.sh
