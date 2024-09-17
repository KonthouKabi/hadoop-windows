echo "setting hivewarehouse path...................."
cp ./hivelib/apache-hive-3.1.3-bin/conf/hive-site.xml ./hivelib/apache-hive-3.1.3-bin/conf/hive-site.xml.bak
sed -i "s|_ROOT_PATH_|$(pwd)|g" ./hivelib/apache-hive-3.1.3-bin/conf/hive-site.xml
echo "hivewarehouse path setting done!!"
