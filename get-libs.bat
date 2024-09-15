@echo off
REM ******************************** Getting JAVA 8 ********************************
echo Downloading OpenJDK 8...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u382-b05/OpenJDK8U-jdk_x64_windows_hotspot_8u382b05.zip' -OutFile '.\java8-lib\OpenJDK8.zip'"
echo Extracting OpenJDK 8...
powershell -Command "Expand-Archive -Path '.\java8-lib\OpenJDK8.zip' -DestinationPath '.\java8-lib\OpenJDK8'"
echo OpenJDK 8 Installed!!

REM ******************************** Getting JAVA 11 ********************************
echo Downloading OpenJDK 11...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18+10/OpenJDK11U-jdk_x64_windows_hotspot_11.0.18_10.zip' -OutFile '.\java-lib\OpenJDK11.zip'"
echo Extracting OpenJDK 11...
powershell -Command "Expand-Archive -Path '.\java-lib\OpenJDK11.zip' -DestinationPath '.\java-lib\OpenJDK11'"
echo OpenJDK 11 Installed!!


REM ******************************** Getting Hadoop 3.3.6 ********************************
echo Downloading Hadoop 3.3.6...
powershell -Command "Invoke-WebRequest -Uri 'https://archive.apache.org/dist/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz' -OutFile '.\hadoop-3.3.6.tar.gz'"
echo Extracting Hadoop...
powershell -Command "tar -xvf hadoop-3.3.6.tar.gz -C ."
echo Hadoop Installed!!



REM ******************************** Getting Hive  ********************************
echo Downloading Hive...
powershell -Command "Invoke-WebRequest -Uri 'https://downloads.apache.org/hive/hive-3.1.3/apache-hive-3.1.3-bin.tar.gz' -OutFile '.\hivelib\apache-hive-3.1.3-bin.tar.gz'"
echo Extracting Hadoop...
powershell -Command "tar -xvf .\hivelib\apache-hive-3.1.3-bin.tar.gz -C .\hivelib\"
echo Hive Installed!!


CALL placemissingfiles.bat