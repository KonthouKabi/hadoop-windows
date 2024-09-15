@echo off
REM Source the environment variables
call hive-path.bat

REM Initialize Hive schema
echo Initializing Hive schema...
echo Running: "%HIVE_HOME%\bin\schematool.bat" -dbType derby -initSchema
"%HIVE_HOME%\bin\schematool.bat" -dbType derby -initSchema

