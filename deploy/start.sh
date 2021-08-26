#!/bin/bash
 
export spring_profiles_active=$DEPLOYMENT_GROUP_NAME
echo 'export spring_profiles_active=$spring_profiles_active' >> /etc/bashrc
echo "env="$spring_profiles_active
/etc/init.d/app start