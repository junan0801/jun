#!/bin/bash 
buildnu=`cat /tmp/build`
docker pull bys-cd.chinacloudapp.cn/library/fnb:$buildnu
docker stop fnb
docker run --rm -d  -e PARAMS="-DDB_HOST=10.0.0.6 -DDB_USER=root -DDB_PSWD=bys2018.com"  -p 9099:9099   -v /opt/beyondsoft/fnb_upload:/tmp --name fnb bys-cd.chinacloudapp.cn/library/fnb
