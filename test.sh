#!/bin/bash
docker exec ecomdbtest sh -c
if test -e ~/var/lib/mysql/ecomdb/products.ibd
then
  echo  "TEST PASSED ---------------------"

else
  echo  "TEST FAILED ---------------------"
   docker stop $(docker ps -a -q)
   docker rm $(docker ps -a -q)
   docker rmi jorgescarenzi/ecom-mysql:$BUILD_NUMBER
   exit 1
fi
