#!/bin/bash

basedir=`pwd`

for i in {1..3}
do
  echo "Starting redis sentinel sent${i}..."
  let port=500${i}
  docker run -v "$basedir/sentinel${i}.conf":/usr/local/etc/redis/sentinel.conf --name sent${i} --network my-net -p $port:$port -d redis redis-sentinel /usr/local/etc/redis/sentinel.conf
  echo "Sleeping..."
  sleep 1
  echo "Continue!"
done


