#!/bin/bash

if ls -l /var/lib/mysql/ecomdb/products.frm 2> /dev/null > /dev/null
then
  echo  "TEST PASSED ---------------------"

else
  echo  "TEST FAILED ---------------------"
   docker stop $(docker ps -a -q)
   docker rm $(docker ps -a -q)
   docker rmi jorgescarenzi/ecom-mysql:$BUILD_NUMBER
   exit 1
fi
