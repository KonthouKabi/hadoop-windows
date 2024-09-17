#!/bin/bash

echo "Setting Hive warehouse path...................."

# Create a backup of the original hive-site.xml
cp ./hivelib/apache-hive-3.1.3-bin/conf/hive-site.xml ./hivelib/apache-hive-3.1.3-bin/conf/hive-site.xml.bak

# Get the current working directory (root path)
ROOT_PATH=$(pwd)

# Detect the operating system and apply the correct sed syntax
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s|_ROOT_PATH_|$ROOT_PATH|g" ./hivelib/apache-hive-3.1.3-bin/conf/hive-site.xml
else
    # Linux (Ubuntu or other distros)
    sed -i "s|_ROOT_PATH_|$ROOT_PATH|g" ./hivelib/apache-hive-3.1.3-bin/conf/hive-site.xml
fi

echo "Hive warehouse path setting done!!"
