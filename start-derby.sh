#!/bin/bash

# Source the environment variables from another script
source ./hive-path.sh

# Initialize Hive schema
echo "Initializing Hive schema..."
echo "Running: $HIVE_HOME/bin/schematool -dbType derby -initSchema"
$HIVE_HOME/bin/schematool -dbType derby -initSchema
