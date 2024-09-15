echo "copying missing files......................."
COPY .\missing-files\hive-site.xml .\hivelib\apache-hive-3.1.3-bin\conf\
COPY .\missing-files\hive-log4j2.properties .\hivelib\apache-hive-3.1.3-bin\conf\
COPY .\missing-files\hive.bat .\hivelib\apache-hive-3.1.3-bin\bin\
COPY .\missing-files\schematool.bat .\hivelib\apache-hive-3.1.3-bin\bin\
COPY .\missing-files\woodstox-core-5.4.0.jar .\hivelib\apache-hive-3.1.3-bin\lib\
echo "completed..............."