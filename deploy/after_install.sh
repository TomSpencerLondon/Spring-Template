#!/bin/bash

jar_dir=/opt/springpractice/
jar_file=$(find $jar_dir -name '*.jar' -printf "%f\n" | head -1 )
rm -f /etc/init.d/springpractice
ln -s $jar_dir$jar_file /etc/init.d/springpractice
echo $jar_dir$jar_file