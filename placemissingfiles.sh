#!/bin/bash

echo "Copying missing files......................."

# Copy missing files to their respective locations
cp ./missing-files/winutils.exe ./hadoop-3.3.6/bin/
cp ./missing-files/hive-site.xml ./hivelib/apache-hive-3.1.3-bin/conf/
cp ./missing-files/hive-log4j2.properties ./hivelib/apache-hive-3.1.3-bin/conf/
cp ./missing-files/hive.bat ./hivelib/apache-hive-3.1.3-bin/bin/
cp ./missing-files/schematool.bat ./hivelib/apache-hive-3.1.3-bin/bin/
cp ./missing-files/woodstox-core-5.4.0.jar ./hivelib/apache-hive-3.1.3-bin/lib/

echo "Completed................"
