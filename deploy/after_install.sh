#!/bin/bash

jar_dir=/opt/web-app/
jar_file=$(find $jar_dir -name '*.jar' -printf "%f\n" | head -1 ) 
rm -f /etc/init.d/web-app
ln -s $jar_dir$jar_file /etc/init.d/web-app
echo $jar_dir$jar_file