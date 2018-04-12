#!/bin/bash
cd /home/beyondsoft/docker
rm -rf ./fnb-admin.jar
cp /jenkins_home/workspace/Maven-Fnb-Docker/admin/target/fnb-admin.jar   /home/beyondsoft/docker
buildnu=`cat /tmp/build` 
docker build --no-cache --rm=true --force-rm=true -f Dockerfile-fnb -t  bys-cd.chinacloudapp.cn/library/fnb:$buildnu  . 
#docker push bys-cd.chinacloudapp.cn/library/fnb:$buildnu
