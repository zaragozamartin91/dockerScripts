#!/bin/bash

basedir=`pwd`

for i in {1..3}
do
  echo "Starting redis instance red${i}..."
  let port=700${i}
  docker run -v "$basedir/node${i}.conf":/usr/local/etc/redis/redis.conf --name red${i} --network my-net -p $port:$port -d redis redis-server /usr/local/etc/redis/redis.conf
  echo "Sleeping..."
  sleep 3
  echo "Continue!"
done


