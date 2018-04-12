#!/bin/bash
cd /home/beyondsoft/nginx/html/ 
tar -zxvf /home/beyondsoft/nginx/html/fe-dist.tgz
rm -rf  /home/beyondsoft/nginx/html/fe
mv   /home/beyondsoft/nginx/html/dist /home/beyondsoft/nginx/html/fe

rm -rf /home/beyondsoft/nginx/html/fe-dist.tgz

