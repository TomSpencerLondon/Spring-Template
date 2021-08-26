#!/bin/bash
 
export spring_profiles_active=$DEPLOYMENT_GROUP_NAME
echo 'export spring_profiles_active=$spring_profiles_active' >> /etc/bashrc
echo "env="$spring_profiles_active
export JAVA_OPTS="-Xmx6G -Xms6G -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/var/log/oom_%p.log -XX:ErrorFile=/var/log/jvm-crash_%p.log"
/etc/init.d/web-app start