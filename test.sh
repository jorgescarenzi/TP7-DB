#!/bin/bash
docker exec -t ecomdbtest ls var/lib/mysql/ecomdb/products.ibd
output="$?"
echo $output
if [ $output -eq 0 ]; then
 echo  "TEST PASSED ---------------------"

else
  echo  "TEST FAILED ---------------------"
   docker stop $(docker ps -a -q)
   docker rm $(docker ps -a -q)
   docker rmi jorgescarenzi/ecom-mysql:$BUILD_NUMBER
   exit 1
fi
